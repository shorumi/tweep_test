# frozen_string_literal: true

module UserRepository
  class UserRepo
    class << self
      def lists_all
        User.all
      end


      def create_user(args)
        filtered_args = args.except(
          :favourites_count, :text, :user_mention_screen_name,
          :tweet_created_at, :tweet_link, :user_mention_id,
          :retweeted, :retweet_count, :in_reply_to_user_id,
          :in_reply_to_screen_name, :tweet_external_id
        )
        User.create!(filtered_args)
      end
    end
  end
end
