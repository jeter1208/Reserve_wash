class UsersController < ApplicationController
  def reserve
    @user = current_user
	end
end
