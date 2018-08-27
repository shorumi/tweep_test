# frozen_string_literal: true

class UserResource < JSONAPI::Resource
  immutable
  caching
  attribute :screen_name

  has_many :most_mentions
end
