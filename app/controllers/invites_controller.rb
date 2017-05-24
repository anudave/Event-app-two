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
     user_id: current_user.id,
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
     background_image: params[:form_background_image],
     custom_font: params[:form_custom_font]
     )
    invite.save
    redirect_to "/invites/#{invite.id}"
  end

  def show
    @invite = Invite.find_by(id: params[:id])
    render "show.html.erb", layout: "invite_layout.html.erb"
  end

  def edit 
    invite_id = params[:id]
    @invite = Invite.find_by(id: invite_id)
    render "edit.html.erb"
  end

  def update
    invite_id = params[:id]
    @invite = Invite.find_by(id: invite_id)
    @invite.user_email = params[:form_user_email]
    @invite.guest_email = params[:form_guest_email]
    @invite.phone_number = params[:form_guest_phone_number]
    @invite.title = params[:form_title]
    @invite.host = params[:form_host]
    @invite.contact_email = params[:form_contact_email]
    @invite.location = params[:form_location]
    @invite.address = params[:form_address]
    @invite.city = params[:form_city]
    @invite.event_date_time = params[:form_date_time]
    @invite.message = params[:form_message]
    @invite.background_image = params[:form_background_image]
    @invite.custom_font = params[:form_custom_font]
    redirect_to "/invites/#{@invite.id}"
  end

  def destroy
    render "destroy.html.erb"
  end
end
