# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TweepsApiService do
  before(:all) do
    @tweeps_api_service = TweepsApiService::Client.new
  end
  describe 'app/services/tweeps_api_service.rb', vcr: true do
    describe 'GET #tweets, validates' do
      context 'List All tweets, after Authenticate in Tweets API' do
        let(:tweeps_service) { @tweeps_api_service }
        let(:first_tweep) do
          tweeps_service.tweeps.body['statuses'][0]
        end
        it { expect(first_tweep['user']['name']).to be_truthy }
      end

      context '#' do
        pending
      end
    end
  end
end
