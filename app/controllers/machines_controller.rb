class MachinesController < ApplicationController
  def index
    @machines = Machine.all
  end

  def show
    @machine = Machine.find(params[:id])
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(params[:machine])
    if @machine.save
      redirect_to @machine, :notice => "Successfully created machine."
    else
      render :action => 'new'
    end
  end

  def edit
    @machine = Machine.find(params[:id])
  end

  def update
    @machine = Machine.find(params[:id])
    if @machine.update_attributes(params[:machine])
      redirect_to @machine, :notice  => "Successfully updated machine."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @machine = Machine.find(params[:id])
    @machine.destroy
    redirect_to machines_url, :notice => "Successfully destroyed machine."
  end
end
