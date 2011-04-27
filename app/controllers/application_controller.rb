class ApplicationController < ActionController::Base
  
  protect_from_forgery
  filter_parameter_logging :password

  helper_method :current_user

  private

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

  def current_user?
    if current_user.nil?
      redirect_to login_path
      flash[:notice] = :you_havent_started_session
    end
  end
end
