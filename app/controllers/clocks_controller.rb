class ClocksController < ApplicationController
  respond_to :html, :js, :json, :xml
  
  def index
   @clock = Clock.find(:all)
  end

  def new
   @clock = Clock.new
  end
 
  def create
    @clock = Clock.create(params[:clock])
    if @clock.save!
      respond_with(@clock)
    else 
      render :action => 'new'
    end    
  end 

  def show
    @clock = Clock.find(params[:id])
  end

  def destroy
    @clock = Clock.find(params[:id])
    @clock.destroy
    redirect_to(clocks_path)
  end

  def edit
    @clock = Clock.find(params[:id])
  end

  def update
    @clock = Clock.find(params[:id])
    if @clock.update_attributes(params[:clock])
      respond_with(@clock)
    end
  end
end
