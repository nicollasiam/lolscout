module Applications
  module Summoners
    class CreateSummonerPerformance
      def execute(summoner, summoner_matches)
        # Translate to hash
        summoner_performance_params = Translators::SummonerPerformanceTranslator.translate(summoner, summoner_matches)

        # Insert data to database
        SummonerPerformance.create(summoner_performance_params)
      end
    end
  end
end
