module Applications
  module Summoners
    class UpdateSummonerId
      def initialize(summoner_name)
        @summoner_name = summoner_name
      end

      def execute
        # Get summoner DTO from API
        summoner = Services::SummonerService.find_by_name(@summoner_name)

        # Update account_id in database
        Subscription.where(summoner_name: @summoner_name).update(summoner_id: summoner.account_id) rescue ''
      end
    end
  end
end