class ActivitiesController < ApplicationController

  before_filter :current_user?

  def index
    @main_activity = MainActivity.find(params[:main_activity_id])
    @activities = Activity.all
  end

  def show
    @main_activity = MainActivity.find(params[:main_activity_id])
    @activity = Activity.find(params[:id])
  end

  def new
    @main_activity = MainActivity.find(params[:main_activity_id])
    @activity = @main_activity.activities.build
  end

  def create
    @main_activity = MainActivity.find(params[:main_activity_id])
    @activity = @main_activity.activities.new(params[:activity])
    if @activity.save
      redirect_to @main_activity, :notice => "Successfully created activity."
    else
      render :action => 'new'
    end
  end

  def edit
    @main_activity = MainActivity.find(params[:main_activity_id])
    @activity = @main_activity.activities.find(params[:id])
  end

  def update
    @main_activity = MainActivity.find(params[:main_activity_id])
    @activity = @main_activity.activities.find(params[:id])
    if @activity.update_attributes(params[:activity])
      redirect_to @activity, :notice  => "Successfully updated activity."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_url, :notice => "Successfully destroyed activity."
  end
end
