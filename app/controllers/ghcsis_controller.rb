class GhcsisController < ApplicationController
  def index
    @ghcsis = Ghcsis.all
  end
  
  def show
    @ghcsis = Ghcsis.find(params[:id])
  end
  
  def new
    @ghcsis = Ghcsis.new
  end
  
  def create
    @ghcsis = Ghcsis.new(params[:ghcsis])
    if @ghcsis.save
      flash[:notice] = "Successfully created ghcsis."
      redirect_to @ghcsis
    else
      render :action => 'new'
    end
  end
  
  def edit
    @ghcsis = Ghcsis.find(params[:id])
  end
  
  def update
    @ghcsis = Ghcsis.find(params[:id])
    if @ghcsis.update_attributes(params[:ghcsis])
      flash[:notice] = "Successfully updated ghcsis."
      redirect_to @ghcsis
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @ghcsis = Ghcsis.find(params[:id])
    @ghcsis.destroy
    flash[:notice] = "Successfully destroyed ghcsis."
    redirect_to ghcses_url
  end
end
