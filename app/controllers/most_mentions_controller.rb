# frozen_string_literal: true

class MostMentionsController < ApplicationController
  def index
    m_m_ordered = MostMentionRepository::MostMentionRepo.lists_all_ordered
    jsonapi_render json: m_m_ordered if stale?(m_m_ordered)
  end
end
