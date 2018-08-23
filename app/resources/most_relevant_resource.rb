# frozen_string_literal: true

class MostRelevantResource < JSONAPI::Resource
  caching
  attributes :followers_count, :screen_name, :profile_link, :created_at, :link,
             :retweet_count, :text, :favourite_count
end
