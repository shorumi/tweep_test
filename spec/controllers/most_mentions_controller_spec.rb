# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

RSpec.describe MostMentionsController, type: :controller do
  let(:response_body) { JSON.parse(response.body) }

  shared_examples 'a successful response' do
    it 'responds with 200' do
      is_expected.to respond_with :ok
    end
  end

  context 'when filtering' do
    let(:records) { response_body['data'].size }

    before do
      FactoryBot.create_list(:most_mention, 4)
      get :index, params: param, format: :json
    end

    context 'and no filter at all' do
      let(:param) { {} }
      it_behaves_like 'a successful response'
      it 'returns a number of most mention resources correctly' do
        expect(records).to eq(4)
      end
    end
  end

  context 'returns most mentioned tweets as json' do
    describe '#index' do
      before(:each) do
        2.times { FactoryBot.create(:most_mention) }
        get :index, format: :json
      end
      it_behaves_like 'a successful response'
      it 'returns number of most mentioned tweets correctly' do
        expect(response_body['data'].size).to eq(2)
      end
    end
  end
end
