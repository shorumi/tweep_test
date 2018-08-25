# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    screen_name { 'kelvin_carroll' }
    followers_count { 247 }
    profile_link { 'https://twitter.com/vandervort_raven_i' }
    user_external_id { rand(100) }
  end
end
