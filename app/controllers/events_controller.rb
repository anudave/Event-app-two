class EventsController < ApplicationController
  def index
    # @events = Event.all
    @events = current_user.events
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @event = Event.new(
      user_id: current_user.id,
      description: params["description"],
      event_type_id: params["event_type_id"]
    )
    @event.save
    redirect_to "/events/#{@event.id}"
  end

  def show
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
    event.description = params["description"]
    event.event_type_id = params["event_type_id"]
    event.save
    render "update.html.erb"
  end

  # def edit
  #   event_id = params[:id]
  #   @event = Event.find_by(id: event_id)
  #   render "edit.html.erb"
  # end

  # def update
  #   event_id = params[:id]
  #   event = Event.find_by(id: event_id)
  #   event.name = params[:name]
  #   event.description = params[:description]
  #   event.save
  #   render "update.html.erb"
  # end

end
