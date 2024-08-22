class UsersController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]

  def show
  end

  def edit
  end
end
