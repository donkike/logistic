class AveragesController < ApplicationController
  def index
    @averages = Average.all
  end

  def show
    @average = Average.find(params[:id])
  end

  def new
    @average = Average.new
  end

  def create
    @average = Average.new(params[:average])
    if @average.save
      redirect_to @average, :notice => "Successfully created average."
    else
      render :action => 'new'
    end
  end

  def edit
    @average = Average.find(params[:id])
  end

  def update
    @average = Average.find(params[:id])
    if @average.update_attributes(params[:average])
      redirect_to @average, :notice  => "Successfully updated average."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @average = Average.find(params[:id])
    @average.destroy
    redirect_to averages_url, :notice => "Successfully destroyed average."
  end
end
