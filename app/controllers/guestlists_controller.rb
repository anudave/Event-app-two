class GuestlistsController < ApplicationController
  
  def index
    @guestlists = current_user.guest_lists
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create 
    @guestlist = GuestList.new(
      name: params[:form_name],
      status: params[:form_status],
      event_id:  params[:form_event_id]
    )
    @guestlist.save
    redirect_to "/guestlists"
  end

  def show 
    guestlist_id = params[:id]
    @guestlist = GuestList.find_by(id: guestlist_id)
    render "show.html.erb"
  end


end
