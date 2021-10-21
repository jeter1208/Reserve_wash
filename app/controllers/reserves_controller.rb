class ReservesController < ApplicationController
  def reserve
    @reserve = Reserve.new
  end

  def create
    @reserve = Reserve.new(reserve_params)
    if @reserve.save
      redirect_to root_path, notice:'預約成功'
    else
      render :reserve, notice:'失敗'
    end
  end

  private
    def reserve_params
      params.require(:reserve).permit(:name, :email, :telephone, :address, :cellphone, :appointment)
    end
end
