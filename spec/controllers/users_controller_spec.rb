# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

RSpec.describe UsersController, type: :controller do
  let(:response_body) { JSON.parse(response.body) }

  shared_examples 'a successful response' do
    it 'responds with 200' do
      is_expected.to respond_with :ok
    end
  end

  context 'returns users as json' do
    describe '#index' do
      before(:each) do
        FactoryBot.create_list(:user, 2)
        get :index, format: :json
      end
      it_behaves_like 'a successful response'
      it 'returns number of user correctly' do
        expect(response_body['data'].size).to eq(2)
      end
    end
  end
end
