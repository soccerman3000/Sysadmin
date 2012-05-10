class ServersController < ApplicationController
  
 before_filter :authenticate_user!

  def index
    @active_servers = Server.active
    @inactive_servers = Server.inactive
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
      redirect_to servers_path, :notice => "Successfully created server."
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
      redirect_to servers_path, :notice  => "Successfully updated server."
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
