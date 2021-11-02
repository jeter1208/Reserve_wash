class Admin::ReservesController < ApplicationController
    before_action  :find_user_reserve, only: [:edit, :update, :destroy]
    authorize_resource
    def index
      @reserves = Reserve.all
    end
    # def new
    #   @reserve = current_user.reserves.new
    # end
  
    # def create
    #   @reserve = current_user.reserves.new(reserve_params)
    #   if @reserve.save
    #     MailWorker.perform_at(5.seconds.from_now,
    #                           @reserve.name,
    #                           @reserve.cellphone,
    #                           @reserve.address,
    #                           @reserve.appointment,
    #                           @reserve.brand,
    #                           @reserve.genre,
    #                           @reserve.telephone,
    #                           @reserve.email)
    #     redirect_to root_path, notice:'填寫成功'
    #   else
    #     render :new, notice: '失敗'
    #   end
    # end
  
    def edit
    end
  
    def show
    end
  
    def update
          if @reserve.update(reserve_params)
              redirect_to root_path, notice:'更改成功'
          else
              ## 待處理
              render :edit
          end
      end
  
    def destroy
          @reserve.update(deleted_at: Time.now)
          redirect_to admin_reserves_path
      end
  
    private
      def reserve_params
        params.require(:reserve).permit(:name, 
                                        :email, 
                                        :telephone, 
                                        :address, 
                                        :cellphone, 
                                        :appointment, 
                                        :genre, 
                                        :brand)
      end
  
      def find_user_reserve
        @reserve = current_user.reserves.friendly.find(params[:id])
      end
end