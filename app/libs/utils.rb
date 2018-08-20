# frozen_string_literal: true

module Utils
  class Twitter
    class << self
      def create_profile_link(args)
        'https://twitter.com/' + args
      end

      def create_tweet_link(args)
        'https://twitter.com/' +
          args[:screen_name] + '/status/' + args[:tweet_id].to_s
      end
    end
  end
end
