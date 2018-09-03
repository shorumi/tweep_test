# frozen_string_literal: true

class TweepBuilder
  attr_reader :statuses, :screen_name

  def initialize(argument)
    @statuses = argument
    @screen_name = user_screen_name
  end

  def call
    build_tweep
  end

  private

  def tweep_hash
    {
      user_mention_id:            user_mentions_id,
      user_mention_screen_name:   user_mention_screen_name,
      screen_name:                screen_name,
      followers_count:            statuses_user['followers_count'],
      profile_link:               profile_link,
      retweeted:                  statuses['retweeted'],
      retweet_count:              statuses['retweet_count'],
      favourites_count:           statuses_user['favourites_count'],
      text:                       statuses['text'],
      tweet_created_at:           statuses['created_at'],
      tweet_link:                 tweet_link,
      in_reply_to_user_id:        statuses['in_reply_to_user_id'],
      in_reply_to_screen_name:    statuses['in_reply_to_screen_name'],
      tweet_external_id:          statuses['id'],
      user_external_id:           statuses_user['id']
    }
  end

  def build_tweep
    Tweep.new(tweep_hash)
  end

  def statuses_user
    statuses['user']
  end

  def user_mentions?
    statuses['entities']['user_mentions'].empty?
  end

  def user_screen_name
    statuses_user['screen_name']
  end

  def statuses_user_mentions
    statuses['entities']['user_mentions']
  end

  def user_mentions_id
    has_mention_id = statuses_user_mentions.map { |item| item['id'] }
    user_mentions? ? nil : has_mention_id
  end

  def user_mention_screen_name
    has_mention_screen_name =
      statuses_user_mentions.map { |item| item['screen_name'] }
    user_mentions? ? nil : has_mention_screen_name
  end

  def tweet_id
    statuses['id']
  end

  def profile_link
    Utils::Twitter.create_profile_link(screen_name) if screen_name
  end

  def tweet_link
    tweet_link_args = { tweet_id: tweet_id,
                        screen_name: screen_name }

    Utils::Twitter.create_tweet_link(tweet_link_args) if screen_name
  end
end
