class Admin::UsersController < ApplicationController
    authorize_resource
  def index
    @users = Reserve.all
  end
end
