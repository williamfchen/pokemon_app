class PocketMonster < ApplicationRecord
  validates_presence_of :name, 
                        :number, 
                        :image,
                        :shiny

  has_and_belongs_to_many :teams, join_table: :team_pocket_monsters

  class << self
    def find_pokemon(poke)
      create(
        name: poke.name,
        number: poke.number,
        image: poke.image,
        shiny: poke.shiny
      )
    end
  end
end
