# frozen_string_literal: true

module Repos
  module Dildos
    class Core
      def initialize(dildo:)
        @dildo = dildo
      end

      def update_name(name)
        p "The new name is:#{name}"
        dildo.name = name
      end

      def destroy
        p 'Baboom, crash, crash, oh no, I am dying!...'
        p 'Dildo deleted'
      end

      private

      attr_reader :dildo
    end
  end
end
