# frozen_string_literal: true

class Tweet < ApplicationRecord
  belongs_to :user
  validates :tweet_external_id, presence: true, uniqueness: true
end
