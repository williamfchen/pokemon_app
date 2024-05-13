class PocketMonster < ApplicationRecord
  validates_presence_of :name, 
                        :number, 
                        :image,
                        :shiny

  has_many :teams

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
