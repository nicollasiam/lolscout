module Translators
  class MatchTranslator
    class << self
      def translate(match_DTO, summoner_DTO)
        @summoner_id_in_match = find_id_in_match(match_DTO, summoner_DTO.name)
        @summoner_in_match = find_participant_in_match(match_DTO)

        {
          summoner_id: summoner_DTO.account_id,
          match_id: match_DTO.game_id,
          season_id: match_DTO.season_id,
          champion_id: @summoner_in_match.champion_id,
          duration: match_DTO.game_duration,
          date: match_DTO.game_creation,
          summoner_name: summoner_DTO.name,
          elo: @summoner_in_match.highest_achieved_season_tier,
          win: @summoner_in_match.stats.win,
          kills: @summoner_in_match.stats.kills,
          deaths: @summoner_in_match.stats.deaths,
          assists: @summoner_in_match.stats.assists,
          largest_killing_spree: @summoner_in_match.stats.largest_killing_spree,
          largest_multi_kill: @summoner_in_match.stats.largest_multi_kill,
          killing_sprees: @summoner_in_match.stats.killing_sprees,
          double_kills: @summoner_in_match.stats.double_kills,
          triple_kills: @summoner_in_match.stats.triple_kills,
          quadra_kills: @summoner_in_match.stats.quadra_kills,
          penta_kills: @summoner_in_match.stats.penta_kills,
          total_damage_dealt_to_champions: @summoner_in_match.stats.total_damage_dealt_to_champions,
          gold_earned: @summoner_in_match.stats.gold_earned,
          total_minions_killed: @summoner_in_match.stats.total_minions_killed,
          neutral_minions_killed_team_jungle: @summoner_in_match.stats.neutral_minions_killed_team_jungle,
          neutral_minions_killed_enemy_jungle: @summoner_in_match.stats.neutral_minions_killed_enemy_jungle,
          vision_wards_bought_in_game: @summoner_in_match.stats.vision_wards_bought_in_game,
          wards_placed: @summoner_in_match.stats.wards_placed,
          wards_killed: @summoner_in_match.stats.wards_killed,
          first_blood_kill: @summoner_in_match.stats.first_blood_kill,
          first_blood_assist: @summoner_in_match.stats.first_blood_assist,
          first_tower_kill: @summoner_in_match.stats.first_tower_kill,
          first_tower_assist: @summoner_in_match.stats.first_tower_assist,
          creeps_per_min_deltas_0_10: (@summoner_in_match.timeline.creeps_per_min_deltas['0_10'] rescue ''),
          creeps_per_min_deltas_10_20: (@summoner_in_match.timeline.creeps_per_min_deltas['10_20'] rescue ''),
          creeps_per_min_deltas_20_30: (@summoner_in_match.timeline.creeps_per_min_deltas['20_30'] rescue ''),
          creeps_per_min_deltas_30_end: (@summoner_in_match.timeline.creeps_per_min_deltas['30_end'] rescue ''),
          xp_per_min_deltas_0_10: (@summoner_in_match.timeline.xp_per_min_deltas['0_10'] rescue ''),
          xp_per_min_deltas_10_20: (@summoner_in_match.timeline.xp_per_min_deltas['10_20'] rescue ''),
          xp_per_min_deltas_20_30: (@summoner_in_match.timeline.xp_per_min_deltas['20_30'] rescue ''),
          xp_per_min_deltas_30_end: (@summoner_in_match.timeline.xp_per_min_deltas['30_end'] rescue ''),
          gold_per_min_deltas_0_10: (@summoner_in_match.timeline.gold_per_min_deltas['0_10'] rescue ''),
          gold_per_min_deltas_10_20: (@summoner_in_match.timeline.gold_per_min_deltas['10_20'] rescue ''),
          gold_per_min_deltas_20_30: (@summoner_in_match.timeline.gold_per_min_deltas['20_30'] rescue ''),
          gold_per_min_deltas_30_end: (@summoner_in_match.timeline.gold_per_min_deltas['30_end'] rescue ''),
          item_0: (@summoner_in_match.stats.item0 rescue ''),
          item_1: (@summoner_in_match.stats.item1 rescue ''),
          item_2: (@summoner_in_match.stats.item2 rescue ''),
          item_3: (@summoner_in_match.stats.item3 rescue ''),
          item_4: (@summoner_in_match.stats.item4 rescue ''),
          item_5: (@summoner_in_match.stats.item5 rescue ''),
          item_6: (@summoner_in_match.stats.item6 rescue '')
        }
      end

      private

      def find_id_in_match(match_DTO, summoner_name)
        match_DTO.participant_identities.find { |participant| participant.player.summoner_name.eql?(summoner_name) }.participant_id
      end

      def find_participant_in_match(match_DTO)
        match_DTO.participants.find { |participant| participant.participant_id.eql?(@summoner_id_in_match) }
      end
    end
  end
end