# frozen_string_literal: true

class MostRelevantsController < ApplicationController
  def index
    m_r_ordered = MostRelevantRepository::MostRelevantRepo.lists_all_ordered
    jsonapi_render json: m_r_ordered if stale?(m_r_ordered)
  end
end
