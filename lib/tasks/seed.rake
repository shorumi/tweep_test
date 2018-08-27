# frozen_string_literal: true

namespace :tweep do
  desc 'Seeds the project with Tweeps data'
  task seed: :environment do
    Rule::Relevant.new(TweepsApiService::Client.new.tweeps.body).call
    puts "==> Tweeps created , in #{Rails.env}."
  end
end
