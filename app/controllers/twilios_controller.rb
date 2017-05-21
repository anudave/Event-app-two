class TwiliosController < ApplicationController
  def send_invite
    @twilio_number = ENV['TWILIO_PHONE_NUMBER']
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']

    invite = @client.account.messages.create({
      from: @twilio_number,
      to: params[:phone_number],
      body: params[:body]
    })
  end
end
