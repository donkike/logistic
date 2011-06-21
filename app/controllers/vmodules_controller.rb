class VmodulesController < ApplicationController
  before_filter :current_user?
  before_filter :is_admin?, :only => :index
  def index
    @vmodules = Vmodule.all
  end

  def show
    @vmodule = Vmodule.find(params[:id])
  end

  def new
    @vmodule = Vmodule.new
  end

  def create
    @vmodule = Vmodule.new(params[:vmodule])
    if @vmodule.save
      redirect_to @vmodule, :notice => "Successfully created vmodule."
    else
      render :action => 'new'
    end
  end

  def edit
    @vmodule = Vmodule.find(params[:id])
  end

  def update
    @vmodule = Vmodule.find(params[:id])
    if @vmodule.update_attributes(params[:vmodule])
      redirect_to @vmodule, :notice  => "Successfully updated vmodule."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @vmodule = Vmodule.find(params[:id])
    @vmodule.destroy
    redirect_to vmodules_url, :notice => "Successfully destroyed vmodule."
  end

  def update_span
    @vmodule = Vmodule.find(params[:id])
    render :layout => false
  end

  def update_worker
    @vmodule = Vmodule.find(params[:id])
    render :layout =>false
  end
end
