class UsuariosController < ApplicationController
  def index
    @usuarios = Usuario.all
  end
  
  def show
    @usuario = Usuario.find(params[:id])
  end
  
  def new
    @usuario = Usuario.new
  end
  
  def create
    @usuario = Usuario.new(params[:usuario])
    if @usuario.save
      flash[:notice] = "Successfully created usuario."
      redirect_to @usuario
    else
      render :action => 'new'
    end
  end
  
  def edit
    @usuario = Usuario.find(params[:id])
  end
  
  def update
    @usuario = Usuario.find(params[:id])
    if @usuario.update_attributes(params[:usuario])
      flash[:notice] = "Successfully updated usuario."
      redirect_to @usuario
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy
    flash[:notice] = "Successfully destroyed usuario."
    redirect_to usuarios_url
  end
end
