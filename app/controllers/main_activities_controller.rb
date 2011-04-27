class MainActivitiesController < ApplicationController
  before_filter :current_user?

  def index
    @main_activities = MainActivity.all
  end

  def show
    @main_activity = MainActivity.find(params[:id])
  end

  def new
    @main_activity = MainActivity.new
  end

  def create
    @main_activity = MainActivity.new(params[:main_activity])
    if @main_activity.save
      redirect_to @main_activity, :notice => "Successfully created main activity."
    else
      render :action => 'new'
    end
  end

  def edit
    @main_activity = MainActivity.find(params[:id])
  end

  def update
    @main_activity = MainActivity.find(params[:id])
    if @main_activity.update_attributes(params[:main_activity])
      redirect_to @main_activity, :notice  => "Successfully updated main activity."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @main_activity = MainActivity.find(params[:id])
    @main_activity.destroy
    redirect_to main_activities_url, :notice => "Successfully destroyed main activity."
  end
end
