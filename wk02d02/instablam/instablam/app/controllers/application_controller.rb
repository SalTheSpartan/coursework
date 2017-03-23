class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login

  def current_user
    if is_logged_in?
      user = User.find session[:user_id]
      return user
    else
      return false
    end
  end

  def is_logged_in?
    session[:user_id] ? true : false
  end

  def require_login
    unless is_logged_in?
      session[:message] = "You must be logged in to access this section"
      redirect_to new_sessions_path #halts request cycle
    end
  end

end
