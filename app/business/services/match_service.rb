module Services
  class MatchService
    include LolClient

    class << self
      def all(account_id)#, from, to)
        client.match.all({ season: ENV['CURRENT_SEASON_ID'],
                           queue: ENV['RANKED_QUEUE_ID']},
                           # beginTime: from,
                           # endTime: to },
                           account_id: account_id)
      end

      def find(account_id, match_id)
        client.match.find({ forAccountId: account_id }, match_id: match_id)
      end
    end
  end
end
