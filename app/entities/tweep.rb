# frozen_string_literal: true

class Tweep
  attr_reader :user_mention_id, :user_mention_screen_name, :followers_count,
              :profile_link, :retweeted, :retweet_count, :favourites_count,
              :text, :tweet_created_at, :tweet_link, :in_reply_to_user_id,
              :in_reply_to_screen_name

  def initialize(argument)
    @user_mention_id                  = argument[:user_mention_id]
    @user_mention_screen_name         = argument[:user_mention_screen_name]
    @followers_count                  = argument[:followers_count]
    @profile_link                     = argument[:profile_link]
    @retweeted                        = argument[:retweeted]
    @retweet_count                    = argument[:retweet_count]
    @favourites_count                 = argument[:favourites_count]
    @text                             = argument[:text]
    @tweet_created_at                 = argument[:tweet_created_at]
    @tweet_link                       = argument[:tweet_link]
    @in_reply_to_user_id              = argument[:in_reply_to_user_id]
    @in_reply_to_screen_name          = argument[:in_reply_to_screen_name]
  end
end
