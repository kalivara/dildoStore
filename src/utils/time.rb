# frozen_string_literal: true

module Utils
  module Time
    class << self
      def hours_into_days(hours)
        (hours / 24) + 1
      end
    end
  end
end
