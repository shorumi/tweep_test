# frozen_string_literal: true

module Rule
  module Relevant
    class MostRelevant
      attr_reader :tweets_json

      def initialize(args)
        @tweets_json = args
      end

      def call
        execute_transaction
      end

      private

      def execute_transaction
        1
      end
    end
  end
end
