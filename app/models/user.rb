# frozen_string_literal: true

class User < ApplicationRecord
  has_many :tweets, dependent: :destroy
  validates :user_external_id, presence: true, uniqueness: true
end
