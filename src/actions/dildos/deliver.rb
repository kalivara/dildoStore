# frozen_string_literal: true

module Actions
  module Dildos
    class Deliver
      def initialize(dildo:, address:)
        @dildo = dildo
        @address = address
      end

      def execute
        order_to_factory
        prepare_delivery
        send_message_to_customer
      end

      private

      attr_reader :dildo, :address

      def order_to_factory
        Actions::Dildos::OrderToFactory.new(dildo: dildo).execute
      end

      def prepare_delivery
        p "Preparing delivery for #{address}"
      end

      def send_message_to_customer
        Actions::SendDeliverMessage.new(message: message).execute
      end

      def message
        Factories::DeliverMessages.new(
          glorious_name: dildo.glorious_name?,
          fire_safe: dildo.fire_safe?
        ).message
      end
    end
  end
end
