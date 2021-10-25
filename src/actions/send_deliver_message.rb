# frozen_string_literal: true

module Actions
  class SendDeliverMessage
    def initialize(message:)
      @message = message
    end

    def execute
      p message
    end

    private

    attr_reader :message
  end
end
