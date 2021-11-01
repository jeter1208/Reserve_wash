class Admin::UsersController < ApplicationController
    authorize_resource
  def index
    @users = User.all
  end
end
