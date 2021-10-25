module Actions
  module Dildos
    class OrderToFactory
      def initialize(dildo:)
        @dildo = dildo
      end

      def execute
        p 'We are doing very complicated stuff to manufacture the Dildo'
      end
    end
  end
end
