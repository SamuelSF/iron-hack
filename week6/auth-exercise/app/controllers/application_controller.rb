class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if @current_user.nil?
        @current_user = User.find_by(id: session[:user_id])
    end

    @current_user
  end

  def admin_only
    if current_user.nil? || current_user != "admin"
      flash[:access_denied] = "Access is denied. You must be an admin to see this page"
      redirect_to root_path
      #they are not logged in or they are not admins
    end
  end

  def authorize_user
    unless current_user
      flash[:message] = 'Please log in or regsister to access this page.'
      redirect_to root_path
    end
  end
end
