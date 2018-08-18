# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when creating an User' do
    subject { FactoryBot.create(:user) }

    it 'correspond correctly to all attributes' do
      expect(subject).to respond_to(:screen_name)
      expect(subject).to respond_to(:followers_count)
      expect(subject).to respond_to(:profile_link)
      expect(subject).to have_many(:tweets)
    end
  end
end
