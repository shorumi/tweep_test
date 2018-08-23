# frozen_string_literal: true

module MostRelevantRepository
  class MostRelevantRepo
    class << self
      def lists_all_ordered
        MostRelevant.order(
          followers_count: :desc, retweet_count: :desc, favourite_count: :desc
        )
      end
    end
  end
end
