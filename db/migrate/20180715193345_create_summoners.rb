class CreateSummoners < ActiveRecord::Migration[5.2]
  def change
    create_table :summoners do |t|
      t.string :summoner_name
      t.string :summoner_id
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
