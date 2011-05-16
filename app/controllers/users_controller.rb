class UsersController < ApplicationController
  #before_filter :current_user?

  def index
    @vmodule = Vmodule.find(params[:vmodule_id])
    @users = User.all
  end

  def show
    @vmodule = Vmodule.find(params[:vmodule_id])
    @user = @vmodule.users.find(params[:id])
  end

  def new
    @vmodule = Vmodule.find(params[:vmodule_id])
    @user = @vmodule.users.new
  end

  def create
    @vmodule = Vmodule.find(params[:vmodule_id])
    @user = @vmodule.users.new(params[:user])
    if @user.save
      redirect_to @vmodule, :notice => "Successfully created user."
    else
      render :action => 'new'
    end
  end

  def edit
    @vmodule = Vmodule.find(params[:vmodule_id])
    @user = @vmodule.users.find(params[:id])
  end

  def update
    @vmodule = Vmodule.find(params[:vmodule_id])
    @user = @vmodule.users.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @vmodule, :notice  => "Successfully updated user."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to vmodules_path, :notice => "Successfully destroyed user."
  end
end
