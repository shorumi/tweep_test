# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MostRelevant, type: :model do
  context 'when creating a MostRelevant' do
    subject { FactoryBot.create(:most_relevant) }

    it 'correspond correctly to all attributes' do
      expect(subject).to respond_to(:followers_count)
      expect(subject).to respond_to(:screen_name)
      expect(subject).to respond_to(:profile_link)
      expect(subject).to respond_to(:created_at)
      expect(subject).to respond_to(:link)
      expect(subject).to respond_to(:retweet_count)
      expect(subject).to respond_to(:text)
      expect(subject).to respond_to(:favourite_count)
    end
  end
end
