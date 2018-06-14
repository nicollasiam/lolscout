module Applications
  module Bi
    class UpdateDatabase
      def execute
        update_klass = Applications::Matches::CreateMatch.new

        # Get all summoners in database
        summoners = Subscription.all

        # Get last time updated (beginTime) in milliseconds DateTime
        beginTime = Services::PeriodService.get_last('update_database')
        endTime = DateTime.now.strftime('%Q').to_i

        summoners.each do |summoner|
          # Get all matches of each summoner (with beginTime and endTime=DateTime.now)
          matches = get_matches(summoner.summoner_id, beginTime)

          next unless matches

          matches.each do |match|
            # Get informations of each match and update the database
            update_klass.execute(match, summoner)
          end
        end

        # Update last time updated (endTime)
        Services::PeriodService.set_last(endTime, 'update_database')
      end

      private

      def get_matches(summoner_id, beginTime)
        Services::MatchService.all(summoner_id, beginTime).try(:matches).map(&:game_id) rescue nil
      end
    end
  end
end
