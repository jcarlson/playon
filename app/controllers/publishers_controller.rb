class PublishersController < ApplicationController
  
  respond_to :json
  
  def index
    respond_with(@publishers = Publisher.order(:name).page(params[:page]))
  end
  
  def new
    respond_with(@publisher = Publisher.new)
  end
  
  def create
    respond_with(@publisher = Publisher.create(params[:publisher]))
  end
  
  def show
    respond_with(@publisher = Publisher.find(params[:id]))
  end
  
  def edit
    respond_with(@publisher = Publisher.find(params[:id]))
  end
  
  def update
    @publisher = Publisher.update(params[:id], params[:publisher])
    flash[:notice] = "Publisher updated"
    respond_with(@publisher)
  end
  
  def destroy
    flash[:notice] = "Publisher deleted (not really, though)"
    redirect_to publishers_path
  end
  
end
