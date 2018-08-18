# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'app/libs/json_handler.rb', vcr: true do
  describe JsonHandler, '.Json, validates' do
    let(:json_handler) do
      JsonHandler::Json.build(
        uri: ENV['TWEEPS_API_URL']
      )
    end
    it 'Builds s connection to target service' do
      expect(json_handler.get(
        '/tweeps',
        '',
        Username: 'thiagofelipepecanha@gmail.com'
      ).code).to eq('200')
    end
  end
end
