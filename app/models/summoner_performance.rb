class SummonerPerfermance < ApplicationRecord
  belongs_to :summoner, inverse_of: :performances
end
