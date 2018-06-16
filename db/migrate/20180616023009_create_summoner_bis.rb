class CreateSummonerBis < ActiveRecord::Migration[5.2]
  def change
    create_table :summoner_bis do |t|
      t.string :summoner_id
      t.string :summoner_name
      t.string :season_id
      t.string :elo
      t.float :total_time_spent_playing
      t.integer :total_games
      t.integer :total_wins
      t.integer :total_losses
      t.float :kda
      t.float :win_percentage
      t.float :average_kills
      t.float :average_deaths
      t.float :average_assists
      t.float :average_largest_killing_spree
      t.float :average_largest_multi_kill
      t.float :average_killing_sprees
      t.float :average_double_kills
      t.float :average_triple_kills
      t.float :average_quadra_kills
      t.float :average_penta_kills
      t.float :average_total_damage_dealt_to_champions
      t.float :average_gold_earned
      t.float :average_total_minions_killed
      t.float :average_neutral_minions_killed_team_jungle
      t.float :average_neutral_minions_killed_enemy_jungle
      t.float :average_vision_wards_bought_in_game
      t.float :average_wards_placed
      t.float :average_wards_killed
      t.float :average_creeps_per_min_deltas_0_10
      t.float :average_creeps_per_min_deltas_10_20
      t.float :average_creeps_per_min_deltas_20_30
      t.float :average_creeps_per_min_deltas_30_end
      t.float :average_xp_per_min_deltas_0_10
      t.float :average_xp_per_min_deltas_10_20
      t.float :average_xp_per_min_deltas_20_30
      t.float :average_xp_per_min_deltas_30_end
      t.float :average_gold_per_min_deltas_0_10
      t.float :average_gold_per_min_deltas_10_20
      t.float :average_gold_per_min_deltas_20_30
      t.float :average_gold_per_min_deltas_30_end
      t.float :average_first_blood_kill
      t.float :average_first_blood_assist
      t.float :average_first_tower_kill
      t.float :average_first_tower_assist
      t.float :average_total_damage_taken
      t.float :average_deaths_per_thousand_damage_taken
      t.float :average_kills_per_thousand_damage_dealt
      t.float :average_kill_participation
      t.float :average_damage_participation
      t.float :average_gold_participation
      t.float :average_damage_per_gold
      t.float :average_wards_per_minute
      t.float :average_gold_with_vision_wards

      t.timestamps
    end
  end
end
