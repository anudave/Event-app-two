class GuestlistsController < ApplicationController
  
  def index
    @guestlists = GuestList.all
    render "index.html.erb"
  end

end
