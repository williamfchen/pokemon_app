class Team < ApplicationRecord
  has_and_belongs_to_many :pocket_monsters, join_table: :team_pocket_monsters
end
