# frozen_string_literal: true

class UserResource < JSONAPI::Resource
  caching
  attributes :screen_name
  
  has_many :most_mentions
end
