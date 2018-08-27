# frozen_string_literal: true

class MostMentionResource < JSONAPI::Resource
  immutable
  caching
  attributes :followers_count, :screen_name, :profile_link, :created_at, :link,
             :retweet_count, :text, :favourite_count

  has_one :user
end
