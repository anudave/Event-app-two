class InvitesController < ApplicationController
  def index
    @invites = Invite.all
    render "index.html.erb"
  end

  def new 
    @event = Event.find_by(id: params[:event_id])
    render "new.html.erb"
  end

  def create
    invite = Invite.new(
     user_email: params[:form_user_email],
     guest_email: params[:form_guest_email],
     phone_number: params[:form_guest_phone_number],
     title: params[:form_title],
     host: params[:form_host],
     contact_email: params[:form_contact_email],
     location: params[:form_location],
     address: params[:form_address],
     city: params[:form_city],
     event_date_time: params[:form_date_time],
     message: params[:form_message],
     background_image: params[:form_background_image]
     )
    invite.save
    render "create.html.erb"
  end

  def show
    @invite = Invite.find_by(id: params[:id])
    render "show.html.erb", layout: "invite_layout.html.erb"
  end

  def edit 
    render "edit.html.erb"
  end

  def update
    render "update.html.erb"
  end

  def destroy
    render "destroy.html.erb"
  end
end
