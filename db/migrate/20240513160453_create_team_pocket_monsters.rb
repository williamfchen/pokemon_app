class CreateTeamPocketMonsters < ActiveRecord::Migration[6.1]
  def change
    create_table :team_pocket_monsters do |t|
      t.bigint :team_id, null: false
      t.bigint :pocket_monster_id, null: false
      t.timestamps
  end

  add_index :team_pocket_monsters, :team_id
  add_index :team_pocket_monsters, :pocket_monster_id
  add_foreign_key :team_pocket_monsters, :teams
  add_foreign_key :team_pocket_monsters, :pocket_monsters
end
end