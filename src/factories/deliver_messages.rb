# frozen_string_literal: true

module Factories
  class DeliverMessages
    def initialize(glorious_name:, fire_safe:)
      @glorious_name = glorious_name
      @fire_safe = fire_safe
    end

    def message
      "#{intro_chunk}\n#{name_chunk}\n#{fire_chunk}\n#{end_chunk}"
    end

    private

    attr_reader :glorious_name, :fire_safe

    def intro_chunk
      'Hello Dear Customer. We are preparing your package'
    end

    def name_chunk
      if glorious_name
        'You will get a glorious Dildo! Top notch selection!'
      else
        'Your dildo may not be glorious, but we are sure you will like it anyhow!'
      end
    end

    def fire_chunk
      if fire_safe
        'Enjoy your dildo in the oven or in hell if you want!'
      else
        'Please be careful. If you get too hot, your dildo may turn in flames!'
      end
    end

    def end_chunk
      "You will get your Dildo in the next #{days_to_delivery} days. Just relax and wait"
    end

    def days_to_delivery
      expected_hours = 80
      Utils::Time.hours_into_days(expected_hours)
    end
  end
end
