class Summoner < ApplicationRecord
  belongs_to :player, inverse_of: :summoner

  has_many :performances, inverse_of: :summoner
end
