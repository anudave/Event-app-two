class EventTypesController < ApplicationController
  
  def index 
    @event_types = EventType.all
    render "index.html.erb"
  end

  def show
    event_type_id = params[:id]
    @event_type = EventType.find_by(id: event_type_id)
    render "show.html.erb"
  end

  def new
    @event_type = EventType.new
    render "new.html.erb"
  end

  
end
