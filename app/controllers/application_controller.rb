class ApplicationController < ActionController::Base
  
  protect_from_forgery


  helper_method :current_user
  helper_method :admin?
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
      flash[:notice] = t(:you_havent_started_session)
    end
  end

  def admin?
    current_user.admin
  end

  def is_admin?
    unless admin?
      redirect_to vmodule_path(current_user.vmodule)
      flash[:notice] = t(:you_arent_admin)
    end
  end
end
