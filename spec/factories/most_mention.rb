# frozen_string_literal: true

FactoryBot.define do
  factory :most_mention do
    user
    followers_count { rand(100) }
    screen_name     { Faker::Twitter.screen_name }
    profile_link    { Faker::Internet.url }
    created_at      { DateTime.now }
    link            { Faker::Twitter.status.fetch(:user).fetch(:url) }
    retweet_count   { rand(500) }
    text            { Faker::Twitter.status.fetch(:text) }
    favourite_count { rand(10) }
  end
end
