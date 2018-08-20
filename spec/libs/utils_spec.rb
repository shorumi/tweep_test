# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'app/libs/utils.rb' do
  describe Utils, '.create_profile_link, validates' do
    let(:screen_name) { 'locaweb' }
    let(:tweet_id) { 743_014 }
    let(:util_twitter) do
      Utils::Twitter
    end
    it "Creates twitter user's profile link" do
      expect(util_twitter.create_profile_link(screen_name))
        .to eq('https://twitter.com/locaweb')
    end

    it "Creates tweet's link" do
      expect(util_twitter.create_tweet_link(
               tweet_id: tweet_id, screen_name: screen_name
             ))
        .to eq('https://twitter.com/locaweb/status/743014')
    end
  end
end
