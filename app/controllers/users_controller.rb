class UsersController < ApplicationController
  def reserve
	end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_path ,notice: "預約成功"
    else
      render :reserve
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :telephone, :address, :cellphone)
    end
end
