class ReportActivityUsersController < ApplicationController
  def index
    @report_activity_users = ReportActivityUser.all
  end

  def show
    @report_activity_user = ReportActivityUser.find(params[:id])
  end

  def new
    @report_activity_user = ReportActivityUser.new
  end

  def create
    @report_activity_user = ReportActivityUser.find_or_create_by_user_id_and_activity_id(params[:report_activity_user])
    if @report_activity_user.save      
      respond_to do |format|
        format.html { redirect_to(@report_activity_user, :notice => "Successfully created report activity user.") } 
        format.xml { render :xml => @report_activity_user.to_xml }
      end
    else
      render :action => 'new'
    end
  end

  def edit
    @report_activity_user = ReportActivityUser.find(params[:id])
  end

  def update
    @report_activity_user = ReportActivityUser.find(params[:id])
    if @report_activity_user.update_attributes(params[:report_activity_user])      
      respond_to do |format|
        format.html { redirect_to(@report_activity_user, :notice => "Successfully created report activity user.") }
        format.xml { render :xml => @report_activity_user.to_xml }
      end
    else
      render :action => 'edit'
    end
  end

  def destroy
    @report_activity_user = ReportActivityUser.find(params[:id])
    @report_activity_user.destroy
    redirect_to report_activity_users_url, :notice => "Successfully destroyed report activity user."
  end
end
