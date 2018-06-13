class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :summoner_name
      t.string :summoner_id

      t.timestamps
    end
  end
end
