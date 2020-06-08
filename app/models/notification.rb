class Notification < ApplicationRecord
  include RailsAdmin::Notifications
  validates_presence_of :text

  has_many :notification_students, dependent: :destroy
  has_many :students, through: :notification_students

  after_create :send_email_and_sms

  def title
    "Notificação #{self.id}"
  end

  private

  def send_email_and_sms
    NotifyResponsiblesWorker.perform_async(self.id)
  end
end
