class Admin::UsersController < ApplicationController
    authorize_resource
  def index
    @users = current_user.reserves.all
  end
end
