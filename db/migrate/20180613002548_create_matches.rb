class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :summoner_id
      t.string :match_id
      t.string :season_id
      t.string :champion_id
      t.integer :duration
      t.integer :date
      t.string :summoner_name
      t.string :elo
      t.boolean :win
      t.integer :kills
      t.integer :deaths
      t.integer :assists
      t.integer :largest_killing_spree
      t.integer :largest_multi_kill
      t.integer :killing_sprees
      t.integer :double_kills
      t.integer :triple_kills
      t.integer :quadra_kills
      t.integer :penta_kills
      t.integer :total_damage_dealt_to_champions
      t.integer :gold_earned
      t.integer :total_minions_killed
      t.integer :neutral_minions_killed_team_jungle
      t.integer :neutral_minions_killed_enemy_jungle
      t.integer :vision_wards_bought_in_game
      t.integer :wards_placed
      t.integer :wards_killed
      t.integer :creeps_per_min_deltas_0_10
      t.integer :creeps_per_min_deltas_10_20
      t.integer :creeps_per_min_deltas_20_30
      t.integer :creeps_per_min_deltas_30_end
      t.integer :xp_per_min_deltas_0_10
      t.integer :xp_per_min_deltas_10_20
      t.integer :xp_per_min_deltas_20_30
      t.integer :xp_per_min_deltas_30_end
      t.integer :gold_per_min_deltas_0_10
      t.integer :gold_per_min_deltas_10_20
      t.integer :gold_per_min_deltas_20_30
      t.integer :gold_per_min_deltas_30_end
      t.string :item_1
      t.string :item_2
      t.string :item_3
      t.string :item_4
      t.string :item_5
      t.string :item_6

      t.timestamps
    end
  end
end
