# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MostRelevantRepository::MostRelevantRepo do
  describe 'app/repositories/most_relevant_repository/most_relevant_repo.rb' do
    context '#create_most_relevant' do
      let(:tweep_h) do
        FactoryBot.build(:tweep_hash)
      end

      subject(:tweet) do
        MostRelevantRepository::MostRelevantRepo.create_most_relevant(
          Utils.hash_key_to_sym(Utils.obj_to_hash(Tweep.new(tweep_h)))
         )
      end

      it { expect(tweet.persisted?).to eq(true) }
    end
  end
end
