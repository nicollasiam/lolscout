class AddFirstTowerAssistToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :first_tower_assist, :boolean
  end
end
