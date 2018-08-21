# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserRepository::UserRepo do
  describe 'app/repositories/user_repository/user_repo.rb' do
    context '#create_user' do
      let(:tweep_h) do
        FactoryBot.build(:tweep_hash)
      end

      subject(:user) do
        UserRepository::UserRepo.create_user(Utils.obj_to_hash(tweep_h))
      end

      it { expect(user.persisted?).to eq(true) }
    end
  end
end
