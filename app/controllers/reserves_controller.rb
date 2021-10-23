class ReservesController < ApplicationController
  before_action  :authenticate_user!

  def reserve
    @reserve = Reserve.new
  end

  def create
    @reserve = current_user.reserves.new(reserve_params)
    if @reserve.save
      redirect_to root_path, notice:'預約成功'
    else
      render :reserve
    end
  end

  private
    def reserve_params
      params.require(:reserve).permit(:name, :email, :telephone, :address, :cellphone, :appointment, :genre, :brand)
    end
end
