# frozen_string_literal: true

FactoryBot.define do
  factory :tweep_hash, class: Hash do
    user_mention_id { 42 }
    user_mention_screen_name { 'locaweb' }
    followers_count { 434 }
    profile_link { 'https://twitter.com/locaweb' }
    retweeted { true }
    retweet_count { 1 }
    favourites_count { 30 }
    text { '@locaweb Use the optical EXE pixel, then you can program the redundant card!' }
    tweet_created_at { 'Mon Sep 24 03:35:21 +0000 2012' }
    tweet_link { 'https://twitter.com/locaweb/status/550602' }
    tweet_external_id { 12345 }
    user_external_id  { 42 }

    initialize_with { attributes }
  end
end
