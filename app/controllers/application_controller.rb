class ApplicationController < ActionController::Base
    
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message #導向另一個頁面
  end
 
#   def after_sign_in_path_for(resource)
#     if resource.is_a?(User)
#         resource.add_role 'user'
#       resource
#     end
#     root_path
#   end
    #render json: "Authorization failed. 權限錯誤，請洽管理人員。
    #render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
    #respond_to do |format|
    #format.json { render nothing: true, status: :forbidden }
    #format.html { redirect_to main_app.root_url, :alert => exception.message }
    #end
end
