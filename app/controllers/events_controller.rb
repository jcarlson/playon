class EventsController < ApplicationController
  def index
    @events = Event.scoped
  end
end
