# frozen_string_literal: true

module Rule
  class Relevant
    attr_reader :tweets_json

    def initialize(args)
      @tweets_json = args
    end

    def call
      execute_transaction
    end

    private

    def execute_transaction
      most_relevant
    end

    def most_relevant
      'Locaweb'
    end
  end
end
