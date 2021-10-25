# frozen_string_literal: true

module Repos
  module Dildos
    class Create
      def initialize(scope: Dildo)
        @scope = scope
      end

      def execute(name:, material:, size:)
        p 'We are designing your new dildo'

        dildo = scope.new(
          name: name,
          material: material,
          available: true
        )

        p 'Enjoy your dildo!'
        dildo
      end

      private

      attr_reader :scope
    end
  end
end
