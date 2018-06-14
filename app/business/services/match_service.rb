module Services
  class MatchService
    include LolClient

    class << self
      def all(account_id, beginTime)
        begin
          client.match.all({ season: ENV['CURRENT_SEASON_ID'],
                             queue: ENV['RANKED_QUEUE_ID'],
                             beginTime: beginTime },
                             account_id: account_id)
        rescue
          puts "Não encontrado jogos para o jogador #{account_id}"
        end
      end

      def find(match_id)
        client.match.find(match_id: match_id)
      end
    end
  end
end
