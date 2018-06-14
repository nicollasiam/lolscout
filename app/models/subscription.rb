class Subscription < ApplicationRecord
  before_create :set_account_id

  private

  def set_account_id
    summoner = Services::SummonerService.find_by_name(summoner_name)

    unless summoner
      errors.add(:summoner_name, 'Usuário não encontrado. Você digitou corretamente?')

      # In Rails 5, returning false does not halts the callback chain anymore
      # it is needed to call throw(:abort) instead
      throw(:abort)
    end

    self.summoner_id = summoner.account_id
  end
end
