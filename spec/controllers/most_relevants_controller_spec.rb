# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'
require 'support/helpers'

RSpec.describe MostRelevantsController, type: :controller do
  let(:response_body) { JSON.parse(response.body) }

  shared_examples 'a successful response' do
    it 'responds with 200' do
      is_expected.to respond_with :ok
    end
  end

  context 'when filtering' do
    let(:records) { response_body['data'].size }

    before do
      load_most_relevant
      get :index, params: param, format: :json
    end

    context 'and no filter at all' do
      let(:param) { {} }
      it_behaves_like 'a successful response'
      it 'returns number of variation deviation notes correctly' do
        expect(records).to eq(4)
      end
    end
  end

  context 'returns most relevants tweets as json' do
    describe '#index' do
      before(:each) do
        2.times { FactoryBot.create(:most_relevant) }
        get :index, format: :json
      end
      it_behaves_like 'a successful response'
      it 'returns number of most relevants tweets correctly' do
        expect(response_body['data'].size).to eq(2)
      end
    end
  end
end
