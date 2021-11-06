class Admin::UsersController < ApplicationController
  authorize_resource
  
  def index
    @pagy, @users = pagy(User.all, items: 9)
  end

  def destory
  end
end
