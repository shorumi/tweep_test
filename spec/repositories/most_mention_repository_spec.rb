# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MostMentionRepository::MostMentionRepo do
  describe 'app/repositories/most_mention_repository/most_mention_repo.rb' do
    context '#create_most_mention' do
      let(:tweep_h) do
        FactoryBot.build(:tweep_hash)
      end

      subject(:tweet) do
        MostMentionRepository::MostMentionRepo.create_most_mention(
          Utils.hash_key_to_sym(Utils.obj_to_hash(Tweep.new(tweep_h)))
         )
      end

      it { expect(tweet.persisted?).to eq(true) }
    end
  end
end
