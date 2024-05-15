class PokemonTeamFacade
  def initialize(team_id)
    @team = Team.find(team_id)
  end

  def add_pokemon_to_team(pokemon_number)
    return if @team.pocket_monsters.count >= 6

    pokemon = PocketMonster.find_by(number: pokemon_number)
    if pokemon.nil?
      return nil
    end

    @team.pocket_monsters << pokemon unless @team.pocket_monsters.include?(pokemon)
    pokemon
  end
end