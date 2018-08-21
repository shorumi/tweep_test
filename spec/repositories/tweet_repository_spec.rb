# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TweetRepository::TweetRepo do
  describe 'app/repositories/tweet_repository/tweet_repo.rb' do
    context '#create_tweet' do
      let(:tweep_h) do
        FactoryBot.build(:tweep_hash)
      end

      subject(:tweet) do
        TweetRepository::TweetRepo.create_tweet(Utils.obj_to_hash(tweep_h))
      end

      it { expect(tweet.persisted?).to eq(true) }
    end
  end
end
