class SmsService
  def self.send_sms(phone_number, message)

    actual_phone = "+1" + phone_number

    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'],
                                       ENV['TWILIO_AUTH_TOKEN']
    message = @client.messages.create(
      body: message,
      to: actual_phone,  # Text this number
      from: ENV['TWILIO_SENDER_NUMBER'] # From a valid Twilio number
      )

    puts message.sid
  end
end
