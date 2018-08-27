# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    users = UserRepository::UserRepo.lists_all
    jsonapi_render json: users if stale?(users)
  end
end
