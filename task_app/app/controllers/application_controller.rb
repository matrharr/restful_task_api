class ApplicationController < ActionController::API
  # protect_from_forgery with: :null_session

private
  def current_user
    @current_user ||= User.find(session[:user_id]) if sessions[:user_id]
  end

  helper_method :current_user


end
