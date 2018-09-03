# frozen_string_literal: true

module TweetRepository
  class TweetRepo
    class << self
      def create_tweet(args)
        filtered_args = args.except(
          :user_mention_id, :screen_name, :user_mention_screen_name,
          :followers_count, :profile_link, :retweeted,
          :retweet_count, :in_reply_to_user_id, :in_reply_to_screen_name,
          :user_external_id
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
