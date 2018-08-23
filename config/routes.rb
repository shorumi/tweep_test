# frozen_string_literal: true

# require 'sidekiq/web'

Rails.application.routes.draw do
  jsonapi_resources :most_relevants, only: [:index]
  # mount Sidekiq::Web => '/sidekiq'
end
