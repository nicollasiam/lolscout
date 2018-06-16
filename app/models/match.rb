class Match < ApplicationRecord
  validates :match_id,
    uniqueness: true
end
