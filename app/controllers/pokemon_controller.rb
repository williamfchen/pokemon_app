class PokemonController < ApplicationController
  def index
    pokemon = params[:pokemon]
    @pokemon = PokeFacade.get_a_pokemon(pokemon)
  end

  def add_to_team
    facade = PokemonTeamFacade.new(params[:team_id])
    pokemon = facade.add_pokemon_to_team(params[:pokemon_id])
  
    if pokemon
      redirect_to team_path(params[:team_id])
    else
      redirect_to team_path(params[:team_id])
    end
  end
end