class NotifyResponsiblesWorker
  include Sidekiq::Worker
  sidekiq_options retry: 2

  def perform(notification_id)
    notification = Notification.includes(:students).find(notification_id)

    notification.students.each do |student|
      ResponsibleMailer.notify(notification: notification, student: student).deliver_later
      SendSmsService.new(notification: notification, student: student).call
    end
  end
end
