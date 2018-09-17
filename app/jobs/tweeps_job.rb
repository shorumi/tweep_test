# frozen_string_literal: true

class TweepsJob < ApplicationJob
  queue_as :default

  def perform_now
    Rule::Relevant.new(TweepsApiService::Client.new.tweeps.body).call
  end
end
