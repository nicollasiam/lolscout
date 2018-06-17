module Applications
  module Bi
    class PopulateSummonersBi
      def execute
        update_klass = Applications::Bi::Summoners::CreateSummonerBi.new

        # Get all summoners
        summoners = Subscription.all
        # If number of matches is greater than previous
        # Add another row
        summoners.each do |summoner|
          debugger
          summoner_matches = Match.where(summoner_id: summoner.summoner_id, season_id: ENV['CURRENT_SEASON_ID'])

          next if move_to_next?(summoner.summoner_id, summoner_matches)

          update_klass.execute(summoner, summoner_matches)
        end
      end

      private

      def move_to_next?(summoner_id, summoner_matches)
        # Get the most recent Bi calculated (only number of games played)
        previous_total_games_played = SummonerBi.where(summoner_id: summoner_id).order(total_games: :desc).limit(1).pluck(:total_games)

        # Move to next summoner if no matches were found
        # Move to next summoner if there is no new matches
        summoner_matches.empty? || summoner_matches.count.eql?(previous_total_games_played)
      end
    end
  end
end
