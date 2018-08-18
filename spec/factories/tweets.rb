# frozen_string_literal: true

FactoryBot.define do
  factory :tweet do
    user
    retweets_count { 50 }
    favourites_count { 247 }
    text { 'cucumber with parrots and rice @yourname' }
    tweet_created_at { 'Mon Apr 26 06:01:55 +0000 2010' }
    tweet_link { 'https://twitter.com/vandervort_raven_i/status/812382' }
  end
end
