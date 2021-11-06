class Admin::ReservesController < ApplicationController
    before_action  :find_user_reserve, only: [:edit, :update, :destroy, :show]
    authorize_resource :admin
    def index
      @pagy, @reserves = pagy(Reserve.order(id: :desc), items: 10)
    end
  
    def edit
    end
  
    def show
    end
  
    def update
      if @reserve.update(reserve_params)
        redirect_to admin_reserves_path , notice:'更改成功'
      else
        render :edit
      end
    end
  
    def destroy
      @reserve.update(deleted_at: Time.now)
      redirect_to admin_reserves_path
    end

    def search
      if params[:keyword]
        @pagy, @reserves = pagy(Reserve.where("name LIKE ? OR email LIKE ?", "%#{params[:keyword]}%","%#{params[:keyword]}%").order(id: :desc), items: 10)
      else
        @pagy, @reserves = pagy(Reserve.order(id: :desc), items: 10)
      end
      render :index
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
                                        :brand,
                                        :status,
                                        :remark,
                                        :image,
                                        :determine_time)
      end
  
      def find_user_reserve
        @reserve = Reserve.friendly.find(params[:id])
      end
end