class RemoveSummonerColumnsFromMatchesTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :matches, :summoner_id
    remove_column :matches, :summoner_name
  end
end
