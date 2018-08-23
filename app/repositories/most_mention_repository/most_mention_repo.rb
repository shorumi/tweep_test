# frozen_string_literal: true

module MostMentionRepository
  class MostMentionRepo
    class << self
      def create_most_mention(args)
        user = create_user(args)
        user.most_mentions.create!(
          followers_count: args[:followers_count], screen_name: args[:user_mention_screen_name], 
          profile_link: args[:profile_link], link: args[:tweet_link], 
          retweet_count: args[:retweet_count], text: args[:text], 
          favourite_count: args[:favourites_count]
         )
      end

      def create_user(args)
        UserRepository::UserRepo.create_user(args)
      end
    end
  end
end
