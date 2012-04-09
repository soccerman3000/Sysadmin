class ServersController < ApplicationController
  
 before_filter :authenticate_user!

def index
    @servers = Server.all
  end

  def show
    @server = Server.find(params[:id])
  end

  def new
    @server = Server.new
  end

  def create
    @server = Server.new(params[:server])
    if @server.save
      redirect_to @server, :notice => "Successfully created server."
    else
      render :action => 'new'
    end
  end

  def edit
    @server = Server.find(params[:id])
  end

  def update
    @server = Server.find(params[:id])
    if @server.update_attributes(params[:server])
      redirect_to @server, :notice  => "Successfully updated server."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @server = Server.find(params[:id])
    @server.destroy
    redirect_to servers_url, :notice => "Successfully destroyed server."
  end
end
