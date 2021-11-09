class Admin::UsersController < ApplicationController
  authorize_resource
  def index
    @pagy, @users = pagy(User.all, items: 9)
  end

  def destory
    @reserve.update(deleted_at: Time.now)
    redirect_to admin_users_path
  end

  def searchs
    if params[:keyword]
      @pagy, @users = pagy(User.where("name LIKE ? OR email LIKE ?", "%#{params[:keyword]}%","%#{params[:keyword]}%").order(id: :desc), items: 10)
    else
      @pagy, @users = pagy(User.order(id: :desc), items: 10)
    end
    render :index
  end
end
