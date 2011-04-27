class AssignedMainActivitiesController < ApplicationController
  def index
    @assigned_main_activities = AssignedMainActivity.all
  end

  def show
    @assigned_main_activity = AssignedMainActivity.find(params[:id])
  end

  def new
    @assigned_main_activity = AssignedMainActivity.new
  end

  def create
    @assigned_main_activity = AssignedMainActivity.new(params[:assigned_main_activity])
    if @assigned_main_activity.save
      redirect_to @assigned_main_activity, :notice => "Successfully created assigned main activity."
    else
      render :action => 'new'
    end
  end

  def edit
    @assigned_main_activity = AssignedMainActivity.find(params[:id])
  end

  def update
    @assigned_main_activity = AssignedMainActivity.find(params[:id])
    if @assigned_main_activity.update_attributes(params[:assigned_main_activity])
      redirect_to @assigned_main_activity, :notice  => "Successfully updated assigned main activity."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @assigned_main_activity = AssignedMainActivity.find(params[:id])
    @assigned_main_activity.destroy
    redirect_to assigned_main_activities_url, :notice => "Successfully destroyed assigned main activity."
  end
end
