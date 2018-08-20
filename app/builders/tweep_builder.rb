# frozen_string_literal: true

class TweepBuilder
  attr_reader :statuses

  def initialize(argument)
    @statuses = argument
  end

  def call
    build_tweep
  end

  private

  def tweep_hash
    {
      user_mention_id:            user_mentions_id,
      user_mention_screen_name:   user_mention_screen_name,
      followers_count:            statuses_user['followers_count'],
      profile_link:               profile_link,
      retweeted:                  statuses['retweeted'],
      retweet_count:              statuses['retweet_count'],
      favourites_count:           statuses_user['favourites_count'],
      text:                       statuses['text'],
      tweet_created_at:           statuses['created_at'],
      tweet_link:                 tweet_link
    }
  end

  def build_tweep
    Tweep.new(tweep_hash)
  end

  def statuses_user
    statuses['user']
  end

  def user_mentions_id
    statuses['entities']['user_mentions'][0]['id']
  end

  def user_mention_screen_name
    statuses['entities']['user_mentions'][0]['screen_name']
  end

  def tweet_id
    statuses['id']
  end

  def profile_link
    Utils::Twitter.create_profile_link(user_mention_screen_name)
  end

  def tweet_link
    Utils::Twitter.create_tweet_link(
      tweet_id: tweet_id, screen_name: user_mention_screen_name
    )
  end
end
