class CreateTeamPocketMonsters < ActiveRecord::Migration[6.1]
  def change
    create_table :team_pocket_monsters do |t|
      t.string :team
      t.string :pocket_monster

      t.timestamps
    end
  end
end
