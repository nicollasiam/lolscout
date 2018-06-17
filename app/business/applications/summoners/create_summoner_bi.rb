module Applications
  module Summoners
    class CreateSummonerBi
      def execute(summoner, summoner_matches)
        # Translate to hash
        summoner_bi_params = Translators::SummonerBiTranslator.translate(summoner, summoner_matches)

        # Insert data to database
        SummonerBi.create(summoner_bi_params)
      end
    end
  end
end
