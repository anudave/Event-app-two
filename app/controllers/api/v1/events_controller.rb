class Api::V1::EventsController < ApplicationController
  
  def index
    @events = Event.all
    render "index.json.jbuilder"
  end

  def show
    event_id = params[:id]
    @event = Event.find_by(id: event_id)
    render "show.json.jbuilder"
  end

end
