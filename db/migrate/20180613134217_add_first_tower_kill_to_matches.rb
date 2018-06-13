class AddFirstTowerKillToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :first_tower_kill, :boolean
  end
end
