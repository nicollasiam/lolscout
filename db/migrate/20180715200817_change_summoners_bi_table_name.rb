class ChangeSummonersBiTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :summoner_bis, :summoner_performances
  end
end
