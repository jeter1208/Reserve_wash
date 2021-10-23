class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private
  def record_not_found
    render file: 'public/404.zh-CN.html', stats: :not_found
  end
end
