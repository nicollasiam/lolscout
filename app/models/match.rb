class Match < ApplicationRecord
  belongs_to :summoner, inverse_of: :matches
  validates :match_id,
    uniqueness: true
end
