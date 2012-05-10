class OwnersController < ApplicationController
  before_filter :authenticate_user!
  def index
    @owners = Owner.where("name #{LIKE} ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json {render :json => @owners.map(&:attributes)}
    end
  end

  def new
    @owner = Owner.new
  end
  
  def show
    @owner = Owner.find(params[:id])
  end
  
  def create
    @owner = Owner.new(params[:owner])
    if @owner.save
      redirect_to owners_path
    else
      render :new
    end
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    if @owner.update_attributes(params[:owner])
      redirect_to owners_path
    else
      render :edit
    end
  end
end
