class GuestlistsController < ApplicationController
  
  def index
    @guestlists = GuestList.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create 
    guestlist = GuestList.new(
      name: params[:form_name],
      status: params[:form_status],
      event_id:  params[:form_event_id]
    )
    guestlist.save
    render "create.html.erb"
  end


end
