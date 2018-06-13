class CreateChampions < ActiveRecord::Migration[5.2]
  def change
    create_table :champions do |t|
      t.string :champion_name
      t.string :champion_id
      t.string :champion_image

      t.timestamps
    end
  end
end
