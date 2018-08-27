# frozen_string_literal: true

module MostRelevantRepository
  class MostRelevantRepo
    class << self
      def lists_all_ordered
        MostRelevant.order(
          followers_count: :desc, retweet_count: :desc, favourite_count: :desc
        )
      end

      def create_most_relevant(args)
        MostRelevant.create!(
          followers_count: args[:followers_count],
          screen_name: args[:user_mention_screen_name],
          profile_link: args[:profile_link], link: args[:tweet_link],
          retweet_count: args[:retweet_count], text: args[:text],
          favourite_count: args[:favourites_count]
        )
      end
    end
  end
end
