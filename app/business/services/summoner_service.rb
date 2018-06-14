module Services
  class SummonerService
    include LolClient

    class << self
      def find_by_name(summoner_name)
        client.summoner.find_by_name(summoner_name) rescue false
      end
    end
  end
end
