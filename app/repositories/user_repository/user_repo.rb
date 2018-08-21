# frozen_string_literal: true

module UserRepository
  class UserRepo
    class << self
      def create_user(args)
        filtered_args = args.except(
          :favourites_count, :text, :user_mention_screen_name,
          :tweet_created_at, :tweet_link, :user_mention_id,
          :retweeted, :retweet_count
        )
        User.create!(filtered_args)
      end
    end
  end
end
