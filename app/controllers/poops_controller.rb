class PoopsController < ApplicationController
  respond_to :html

  def new
    @poop = Poop.new()
    respond_with @poop
  end
  
  def create
    @poop = Poop.new()
    @poop.save(params[:poop])
    respond_with @poop
  end
  
  def edit
    @poop = Poop.find(database_name, params[:id])
    respond_with @poop
  end
  
  def update
    @poop = Poop.find(database_name, params[:id])
    respond_with @poop
  end
  
  
  def index

  end
end