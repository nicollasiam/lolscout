class RemoveSummonerColumnsFromPerformanceTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :summoner_performances, :summoner_id
    remove_column :summoner_performances, :summoner_name
  end
end
