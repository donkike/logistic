class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      if admin?
        redirect_to root_url, :notice => t(:successfully_create_user_session)
      else
        redirect_to vmodule_path(current_user.vmodule), :notice => t(:successfully_create_user_session)
      end
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    redirect_to login_path, :notice => t(:successfully_destroyed_user_session)
  end
end
