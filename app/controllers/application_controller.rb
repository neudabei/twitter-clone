class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # if @current_user exists, dont' run the part of the code after ||=
    # It's called "Memoization"
  end

  def logged_in?
    !!current_user
  end
end
