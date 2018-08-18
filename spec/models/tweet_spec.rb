require 'rails_helper'

RSpec.describe Tweet, type: :model do
  context 'when creating a Tweet' do
    subject { FactoryBot.create(:tweet) }

    it 'correspond correctly to all attributes' do
      expect(subject).to respond_to(:retweets_count)
      expect(subject).to respond_to(:favourites_count)
      expect(subject).to respond_to(:text)
      expect(subject).to respond_to(:tweet_created_at)
      expect(subject).to respond_to(:tweet_link)
      expect(subject).to belong_to(:user)
    end
  end
end
