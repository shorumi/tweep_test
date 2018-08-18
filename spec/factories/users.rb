# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    screen_name { 'kelvin_carroll' }
    followers_count { 247 }
    profile_link { 'https://twitter.com/vandervort_raven_i' }
  end
end
