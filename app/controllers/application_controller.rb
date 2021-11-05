class ApplicationController < ActionController::Base
  include Pagy::Backend
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => '權限不足' #導向另一個頁面
  end
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  before_action :configure_permitted_parameters, if: :devise_controller?
#   def after_sign_in_path_for(resource)
#     if resource.is_a?(User)
#         resource.add_role 'user'
#       resource
#     end
#     root_path
#   end
  def record_not_found
    render file: 'public/404.zh-TW.html', stats: :not_found
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

    # render json: "Authorization failed. 權限錯誤，請洽管理人員。
    # # render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
    # respond_to do |format|
    # format.json { render nothing: true, status: :forbidden }
    # format.html { redirect_to main_app.root_url, :alert => exception.message }
    # end
end
