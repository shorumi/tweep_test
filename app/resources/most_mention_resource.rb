class MostMentionResource < JSONAPI::Resource
  caching
  attributes :followers_count, :screen_name, :profile_link, :created_at, :link,
             :retweet_count, :text, :favourite_count
  
  has_one :user
end