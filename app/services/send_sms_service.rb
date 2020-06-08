class SendSmsService

  FROM_NUMBER = ""

  attr_reader :notification, :student

  def initialize(notification:, student:)
    @notification = notification
    @student = student
  end

  def call
    begin
      message = client.messages.create(body: notification.text,
                                     from: FROM_NUMBER,
                                     to: "+55#{student.responsible_phone}")
    rescue StandardError => e
      Rails.logger.info(e.inspect)
    end
  end

  private

  def client
    sid = Rails.application.credentials[:twilio_sid]
    auth_token = Rails.application.credentials[:twilio_token]
    @client ||= Twilio::REST::Client.new(sid, auth_token)
  end

end
