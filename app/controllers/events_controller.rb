class EventsController < ApplicationController
  
  respond_to :html, :json
  
  def index
    respond_with(@events = Event.all)
  end
  
  def new
    respond_with(@event = Event.new)
  end
  
  def create
    respond_with(@event = Event.create(params[:event]))
  end
  
  def show
    respond_with(@event = Event.find(params[:id]))
  end
  
  def edit
    respond_with(@event = Event.find(params[:id]))
  end
  
  def update
    @event = Event.update(params[:id], params[:event])
    flash[:notice] = "Event updated"
    respond_with(@event)
  end
  
  def destroy
    flash[:notice] = "Event deleted (not really, though)"
    redirect_to events_path
  end
  
end
