# frozen_string_literal: true

# require 'sidekiq/web'

Rails.application.routes.draw do
  jsonapi_resources :most_relevants, only: [:index]
  jsonapi_resources :most_mentions, only: [:index]
  jsonapi_resources :users do
    jsonapi_related_resources :most_mentions, only: [:index]
  end
  # mount Sidekiq::Web => '/sidekiq'
end
