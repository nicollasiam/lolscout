require 'lol'

module LolClient
  extend ActiveSupport::Concern

  @@client = Lol::Client.new "#{ENV['LOL_API_KEY']}", region: 'br'

  included do
    def self.client
      @@client
    end
  end
end
