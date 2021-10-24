class ReservesController < ApplicationController
  before_action  :authenticate_user!

  def index
    @reserves = Reserve.order(id: :desc)
  end

  def new
    @reserve = Reserve.new
  end

  def create
    @reserve = current_user.reserves.new(reserve_params)
    if @reserve.save
      redirect_to root_path, notice:'填寫成功'
    else
      render :new
    end
  end

  def edit
    @reserve = current_user.reserves
  end

  def show
  end
  def update
		if @reserves.update(reserve_params)
			redirect_to root_path
		else
			## 待處理
			render :edit
		end
	end

  def destroy
		@reserve.update(deleted_at: Time.now)
		redirect_to root_path
	end

  private
    def reserve_params
      params.require(:reserve).permit(:name, :email, :telephone, :address, :cellphone, :appointment, :genre, :brand)
    end

    def find_user_reserve
      @reserve = current_user.reserves.find(params[:id])
    end
end
