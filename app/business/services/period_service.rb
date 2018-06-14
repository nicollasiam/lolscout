module Services
  class PeriodService
    class << self
      def get_last(kind)
        Period.find_by(kind: kind).last_update_at
      end

      def set_last(last, kind)
        Period.where(kind: kind).update(last_update_at: last)
      end
    end
  end
end
