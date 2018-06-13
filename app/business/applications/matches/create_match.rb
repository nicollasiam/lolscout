module Applications
  module Matches
    class CreateMatch
      def execute(match_id, summoner_DTO)
        # Get the match DTO
        match_DTO = Services::MatchService.find(match_id)

        # Translate to hash
        match_params = Translators::MatchTranslator.translate(match_DTO, summoner_DTO)

        # Insert data to database
        Match.create(match_params)
      end
    end
  end
end