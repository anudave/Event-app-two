class EventsController < ApplicationController
  def index
    @events = Event.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @event = Event.new(
      user_name: params["user_name"],
      description: params["description"],
      event_type_id: event_type.id
      )
    @event.save
    render "create.html.erb"
  end

  def show
    @event_name = Event.user_id.name
    event_id = params[:id]
    @event = Event.find_by(id: event_id)
    render "show.html.erb"
  end

  def edit
    event_id = params[:id]
    @event = Event.find_by(id: event_id)
    render "edit.html.erb"
  end

  def update
    event_id = params[:id]
    event = Event.find_by(id: event_id)
    event.name = params[:name]
    event.description = params[:description]
    event.save
    render "update.html.erb"
  end

end
