# frozen_string_literal: true

FactoryBot.define do
  factory :most_relevant do
    followers_count { 100 }
    screen_name     { 'pele' }
    profile_link    { 'https://twitter.com/vandervort_raven_i' }
    created_at      { 'Mon Sep 24 03:35:21 +0000 2012' }
    link            { 'https://twitter.com/vandervort_raven_i/status/812382' }
    retweet_count   { 500 }
    text            { 'We need to naviga @locaweb' }
    favourite_count { 10 }
  end
end
