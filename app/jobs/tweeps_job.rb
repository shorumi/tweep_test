# frozen_string_literal: true

class TweepsJob < ApplicationJob
  queue_as :default

  def perform
    Rule::Relevant.new(TweepsApiService::Client.new.tweeps.body).call
  end
end
