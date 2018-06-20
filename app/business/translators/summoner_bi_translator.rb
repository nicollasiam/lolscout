module Translators
  class SummonerBiTranslator
    class << self
      def translate(summoner_DTO, summoner_matches)
        @summoner_matches = summoner_matches
        @matches_count = @summoner_matches.count.to_f

        {
          summoner_id: summoner_DTO.summoner_id,
          summoner_name: summoner_DTO.summoner_name,
          season_id: summoner_matches.first.season_id,
          elo: elo,
          total_time_spent_playing: total_time_spent_playing,
          total_games: @matches_count,
          total_wins: total_wins,
          total_losses: total_losses,
          kda: kda,
          win_percentage: win_percentage,
          average_kills: average_kills,
          average_deaths: average_deaths,
          average_assists: average_assists,
          average_largest_killing_spree: average_largest_killing_spree,
          average_largest_multi_kill: average_largest_multi_kill,
          average_killing_sprees: average_killing_sprees,
          average_double_kills: average_double_kills,
          average_triple_kills: average_triple_kills,
          average_quadra_kills: average_quadra_kills,
          average_penta_kills: average_penta_kills,
          average_total_damage_dealt_to_champions: average_total_damage_dealt_to_champions,
          average_gold_earned: average_gold_earned,
          average_total_minions_killed: average_total_minions_killed,
          average_neutral_minions_killed_team_jungle: average_neutral_minions_killed_team_jungle,
          average_neutral_minions_killed_enemy_jungle: average_neutral_minions_killed_enemy_jungle,
          average_vision_wards_bought_in_game: average_vision_wards_bought_in_game,
          average_wards_placed: average_wards_placed,
          average_wards_killed: average_wards_killed,
          average_creeps_per_min_deltas_0_10: average_creeps_per_min_deltas_0_10,
          average_creeps_per_min_deltas_10_20: average_creeps_per_min_deltas_10_20,
          average_creeps_per_min_deltas_20_30: average_creeps_per_min_deltas_20_30,
          average_creeps_per_min_deltas_30_end: average_creeps_per_min_deltas_30_end,
          average_xp_per_min_deltas_0_10: average_xp_per_min_deltas_0_10,
          average_xp_per_min_deltas_10_20: average_xp_per_min_deltas_10_20,
          average_xp_per_min_deltas_20_30: average_xp_per_min_deltas_20_30,
          average_xp_per_min_deltas_30_end: average_xp_per_min_deltas_30_end,
          average_gold_per_min_deltas_0_10: average_gold_per_min_deltas_0_10,
          average_gold_per_min_deltas_10_20: average_gold_per_min_deltas_10_20,
          average_gold_per_min_deltas_20_30: average_gold_per_min_deltas_20_30,
          average_gold_per_min_deltas_30_end: average_gold_per_min_deltas_30_end,
          average_first_blood_kill: average_first_blood_kill,
          average_first_blood_assist: average_first_blood_assist,
          average_first_tower_kill: average_first_tower_kill,
          average_first_tower_assist: average_first_tower_assist,
          average_total_damage_taken: average_total_damage_taken,
          average_deaths_per_thousand_damage_taken: average_deaths_per_thousand_damage_taken,
          average_kills_per_thousand_damage_dealt: average_kills_per_thousand_damage_dealt,
          average_kill_participation: average_kill_participation,
          average_damage_participation: average_damage_participation,
          average_gold_participation: average_gold_participation,
          average_damage_per_gold: average_damage_per_gold,
          average_wards_per_minute: average_wards_per_minute,
          average_gold_with_vision_wards: average_gold_with_vision_wards
        }
      end

      private

      def elo
        @summoner_matches.order(:date).last.elo
      end

      def total_time_spent_playing
        @summoner_matches.map(&:duration).reject { |data| !data }.reduce(&:+) || 0
      end

      def total_wins
        @summoner_matches.select { |match| match.win }.count
      end

      def total_losses
        @summoner_matches.select { |match| !match.win }.count
      end

      def kda
        kills = @summoner_matches.map(&:kills).reject { |data| !data }.reduce(&:+) || 0
        assists = @summoner_matches.map(&:assists).reject { |data| !data }.reduce(&:+) || 0
        deaths = @summoner_matches.map(&:deaths).reject { |data| !data }.reduce(&:+) || 0

        ((kills + assists).to_f / deaths.to_f).round(2)
      end

      def win_percentage
        total_wins = @summoner_matches.select { |match| match.win }.count

        (total_wins.to_f / @matches_count).round(2)
      end

      def average_kills
        total_kills = @summoner_matches.map(&:kills).reject { |data| !data }.reduce(&:+) || 0

        (total_kills.to_f / @matches_count).round(2)
      end

      def average_deaths
        total_deaths = @summoner_matches.map(&:deaths).reject { |data| !data }.reduce(&:+) || 0

        (total_deaths.to_f / @matches_count).round(2)
      end

      def average_assists
        total_assists = @summoner_matches.map(&:assists).reject { |data| !data }.reduce(&:+) || 0

        (total_assists.to_f / @matches_count).round(2)
      end

      def average_largest_killing_spree
        total_largest_killing_spree = @summoner_matches.map(&:largest_killing_spree).reject { |data| !data }.reduce(&:+) || 0

        (total_largest_killing_spree.to_f / @matches_count).round(2)
      end

      def average_largest_multi_kill
        total_largest_multi_kill = @summoner_matches.map(&:largest_multi_kill).reject { |data| !data }.reduce(&:+) || 0

        (total_largest_multi_kill.to_f / @matches_count).round(2)
      end

      def average_killing_sprees
        total_killing_sprees = @summoner_matches.map(&:killing_sprees).reject { |data| !data }.reduce(&:+) || 0

        (total_killing_sprees.to_f / @matches_count).round(2)
      end

      def average_double_kills
        total_double_kills = @summoner_matches.map(&:double_kills).reject { |data| !data }.reduce(&:+) || 0

        (total_double_kills.to_f / @matches_count).round(2)
      end

      def average_triple_kills
        total_triple_kills = @summoner_matches.map(&:triple_kills).reject { |data| !data }.reduce(&:+) || 0

        (total_triple_kills.to_f / @matches_count).round(2)
      end

      def average_quadra_kills
        total_quadra_kills = @summoner_matches.map(&:quadra_kills).reject { |data| !data }.reduce(&:+) || 0

        (total_quadra_kills.to_f / @matches_count).round(2)
      end

      def average_penta_kills
        total_penta_kills = @summoner_matches.map(&:penta_kills).reject { |data| !data }.reduce(&:+) || 0

        (total_penta_kills.to_f / @matches_count).round(2)
      end

      def average_total_damage_dealt_to_champions
        total_total_damage_dealt_to_champions = @summoner_matches.map(&:total_damage_dealt_to_champions).reject { |data| !data }.reduce(&:+) || 0

        (total_total_damage_dealt_to_champions.to_f / @matches_count).round(2)
      end

      def average_gold_earned
        total_gold_earned = @summoner_matches.map(&:gold_earned).reject { |data| !data }.reduce(&:+) || 0

        (total_gold_earned.to_f / @matches_count).round(2)
      end

      def average_total_minions_killed
        total_total_minions_killed = @summoner_matches.map(&:total_minions_killed).reject { |data| !data }.reduce(&:+) || 0

        (total_total_minions_killed.to_f / @matches_count).round(2)
      end

      def average_neutral_minions_killed_team_jungle
        total_neutral_minions_killed_team_jungle = @summoner_matches.map(&:neutral_minions_killed_team_jungle).reject { |data| !data }.reduce(&:+) || 0

        (total_neutral_minions_killed_team_jungle.to_f / @matches_count).round(2)
      end

      def average_neutral_minions_killed_enemy_jungle
        total_neutral_minions_killed_enemy_jungle = @summoner_matches.map(&:neutral_minions_killed_enemy_jungle).reject { |data| !data }.reduce(&:+) || 0

        (total_neutral_minions_killed_enemy_jungle.to_f / @matches_count).round(2)
      end

      def average_vision_wards_bought_in_game
        total_vision_wards_bought_in_game = @summoner_matches.map(&:vision_wards_bought_in_game).reject { |data| !data }.reduce(&:+) || 0

        (total_vision_wards_bought_in_game.to_f / @matches_count).round(2)
      end

      def average_wards_placed
        total_wards_placed = @summoner_matches.map(&:wards_placed).reject { |data| !data }.reduce(&:+) || 0

        (total_wards_placed.to_f / @matches_count).round(2)
      end

      def average_wards_killed
        total_wards_killed = @summoner_matches.map(&:wards_killed).reject { |data| !data }.reduce(&:+) || 0

        (total_wards_killed.to_f / @matches_count).round(2)
      end

      def average_creeps_per_min_deltas_0_10
        total_creeps_per_min_deltas_0_10 = @summoner_matches.map(&:creeps_per_min_deltas_0_10).reject { |data| !data }.reduce(&:+) || 0

        (total_creeps_per_min_deltas_0_10.to_f / @matches_count).round(2)
      end

      def average_creeps_per_min_deltas_10_20
        total_creeps_per_min_deltas_10_20 = @summoner_matches.map(&:creeps_per_min_deltas_10_20).reject { |data| !data }.reduce(&:+) || 0

        (total_creeps_per_min_deltas_10_20.to_f / @matches_count).round(2)
      end

      def average_creeps_per_min_deltas_20_30
        total_creeps_per_min_deltas_20_30 = @summoner_matches.map(&:creeps_per_min_deltas_20_30).reject { |data| !data }.reduce(&:+) || 0

        (total_creeps_per_min_deltas_20_30.to_f / @matches_count).round(2)
      end

      def average_creeps_per_min_deltas_30_end
        total_creeps_per_min_deltas_30_end = @summoner_matches.map(&:creeps_per_min_deltas_30_end).reject { |data| !data }.reduce(&:+) || 0

        (total_creeps_per_min_deltas_30_end.to_f / @matches_count).round(2)
      end

      def average_xp_per_min_deltas_0_10
        total_xp_per_min_deltas_0_10 = @summoner_matches.map(&:xp_per_min_deltas_0_10).reject { |data| !data }.reduce(&:+) || 0

        (total_xp_per_min_deltas_0_10.to_f / @matches_count).round(2)
      end

      def average_xp_per_min_deltas_10_20
        total_xp_per_min_deltas_10_20 = @summoner_matches.map(&:xp_per_min_deltas_10_20).reject { |data| !data }.reduce(&:+) || 0

        (total_xp_per_min_deltas_10_20.to_f / @matches_count).round(2)
      end

      def average_xp_per_min_deltas_20_30
        total_xp_per_min_deltas_20_30 = @summoner_matches.map(&:xp_per_min_deltas_20_30).reject { |data| !data }.reduce(&:+) || 0

        (total_xp_per_min_deltas_20_30.to_f / @matches_count).round(2)
      end

      def average_xp_per_min_deltas_30_end
        total_xp_per_min_deltas_30_end = @summoner_matches.map(&:xp_per_min_deltas_30_end).reject { |data| !data }.reduce(&:+) || 0

        (total_xp_per_min_deltas_30_end.to_f / @matches_count).round(2)
      end

      def average_gold_per_min_deltas_0_10
        total_gold_per_min_deltas_0_10 = @summoner_matches.map(&:gold_per_min_deltas_0_10).reject { |data| !data }.reduce(&:+) || 0

        (total_gold_per_min_deltas_0_10.to_f / @matches_count).round(2)
      end

      def average_gold_per_min_deltas_10_20
        total_gold_per_min_deltas_10_20 = @summoner_matches.map(&:gold_per_min_deltas_10_20).reject { |data| !data }.reduce(&:+) || 0

        (total_gold_per_min_deltas_10_20.to_f / @matches_count).round(2)
      end

      def average_gold_per_min_deltas_20_30
        total_gold_per_min_deltas_20_30 = @summoner_matches.map(&:gold_per_min_deltas_20_30).reject { |data| !data }.reduce(&:+) || 0

        (total_gold_per_min_deltas_20_30.to_f / @matches_count).round(2)
      end

      def average_gold_per_min_deltas_30_end
        total_gold_per_min_deltas_30_end = @summoner_matches.map(&:gold_per_min_deltas_30_end).reject { |data| !data }.reduce(&:+) || 0

        (total_gold_per_min_deltas_30_end.to_f / @matches_count).round(2)
      end

      def average_first_blood_kill
        total_first_blood_kill = @summoner_matches.map(&:first_blood_kill).select { |data| data }.count || 0

        (total_first_blood_kill.to_f / @matches_count).round(2)
      end

      def average_first_blood_assist
        total_first_blood_assist = @summoner_matches.map(&:first_blood_assist).select { |data| data }.count || 0

        (total_first_blood_assist.to_f / @matches_count).round(2)
      end

      def average_first_tower_kill
        total_first_tower_kill = @summoner_matches.map(&:first_tower_kill).select { |data| data }.count || 0

        (total_first_tower_kill.to_f / @matches_count).round(2)
      end

      def average_first_tower_assist
        total_first_tower_assist = @summoner_matches.map(&:first_tower_assist).select { |data| data }.count || 0

        (total_first_tower_assist.to_f / @matches_count).round(2)
      end

      def average_total_damage_taken
        total_total_damage_taken = @summoner_matches.map(&:total_damage_taken).reject { |data| !data }.reduce(&:+) || 0

        (total_total_damage_taken.to_f / @matches_count).round(2)
      end

      def average_deaths_per_thousand_damage_taken
        total_deaths_per_thousand_damage_taken = @summoner_matches.map(&:deaths_per_thousand_damage_taken).reject { |data| !data }.reduce(&:+) || 0

        (total_deaths_per_thousand_damage_taken.to_f / @matches_count).round(2)
      end

      def average_kills_per_thousand_damage_dealt
        total_kills_per_thousand_damage_dealt = @summoner_matches.map(&:kills_per_thousand_damage_dealt).reject { |data| !data }.reduce(&:+) || 0

        (total_kills_per_thousand_damage_dealt.to_f / @matches_count).round(2)
      end

      def average_kill_participation
        total_kill_participation = @summoner_matches.map(&:kill_participation).reject { |data| !data }.reduce(&:+) || 0

        (total_kill_participation.to_f / @matches_count).round(2)
      end

      def average_damage_participation
        total_damage_participation = @summoner_matches.map(&:damage_participation).reject { |data| !data }.reduce(&:+) || 0

        (total_damage_participation.to_f / @matches_count).round(2)
      end

      def average_gold_participation
        total_gold_participation = @summoner_matches.map(&:gold_participation).reject { |data| !data }.reduce(&:+) || 0

        (total_gold_participation.to_f / @matches_count).round(2)
      end

      def average_damage_per_gold
        total_damage_per_gold = @summoner_matches.map(&:damage_per_gold).reject { |data| !data }.reduce(&:+) || 0

        (total_damage_per_gold.to_f / @matches_count).round(2)
      end

      def average_wards_per_minute
        total_wards_per_minute = @summoner_matches.map(&:wards_per_minute).reject { |data| !data }.reduce(&:+) || 0

        (total_wards_per_minute.to_f / @matches_count).round(2)
      end

      def average_gold_with_vision_wards
        total_gold_with_vision_wards = @summoner_matches.map(&:gold_with_vision_wards).reject { |data| !data }.reduce(&:+) || 0

        (total_gold_with_vision_wards.to_f / @matches_count).round(2)
      end
    end
  end
end
