# frozen_string_literal: true

module TweetRepository
  class TweetRepo
    class << self
      def create_tweet(args)
        filtered_args = args.except(
          :user_mention_id, :user_mention_screen_name,
          :followers_count, :profile_link, :retweeted,
          :retweet_count
        )
        user = create_user(args)
        user.tweets.create!(filtered_args)
      end

      def create_user(args)
        UserRepository::UserRepo.create_user(args)
      end
    end
  end
end
