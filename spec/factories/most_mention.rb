# frozen_string_literal: true

FactoryBot.define do
  factory :most_mention do
    user
    followers_count { 100 }
    screen_name     { 'pele' }
    profile_link    { 'https://twitter.com/vandervort_raven_i' }
    created_at      { 'Mon Sep 24 03:35:21 +0000 2012' }
    link            { 'https://twitter.com/vandervort_raven_i/status/812382' }
    retweet_count   { 500 }
    text            { 'We need to naviga @locaweb' }
    favourite_count { 10 }
    
    factory :most_mention_traits do
      trait :row01 do
        user
        followers_count { 200 }
        screen_name     { 'ronaldo' }
        profile_link    { 'https://twitter.com/r9' }
        created_at      { 'Mon Sep 24 03:35:21 +0000 2012' }
        link            { 'https://twitter.com/r9/status/812383' }
        retweet_count   { 600 }
        text            { 'I am the world bestest player ever' }
        favourite_count { 20 }
      end

      trait :row02 do
        user
        followers_count { 300 }
        screen_name     { 'cristiano_ronaldo' }
        profile_link    { 'https://twitter.com/r7' }
        created_at      { 'Mon Sep 24 03:35:21 +0000 2012' }
        link            { 'https://twitter.com/r7/status/812385' }
        retweet_count   { 700 }
        text            { 'Yesss, I am here' }
        favourite_count { 30 }
      end

      trait :row03 do
        user
        followers_count { 400 }
        screen_name     { 'ronaldinho' }
        profile_link    { 'https://twitter.com/r10' }
        created_at      { 'Mon Sep 24 03:35:21 +0000 2012' }
        link            { 'https://twitter.com/r10/status/812388' }
        retweet_count   { 800 }
        text            { 'Who let the dogs out' }
        favourite_count { 50 }
      end

      trait :row04 do
        user
        followers_count { 400 }
        screen_name     { 'romario|_fish' }
        profile_link    { 'https://twitter.com/romario_fish' }
        created_at      { 'Mon Sep 24 03:35:21 +0000 2012' }
        link            { 'https://twitter.com/romario_fish/status/812389' }
        retweet_count   { 800 }
        text            { 'Whats up fish' }
        favourite_count { 50 }
      end
    end
  end
end
