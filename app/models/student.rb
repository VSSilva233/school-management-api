class Student < ApplicationRecord
  include RailsAdmin::Students
  validates_presence_of :name, :responsible_phone, :responsible_name, :birthday, :responsible_email, :cpf, :email

  has_many :occurrences, dependent: :destroy
  has_many :notification_students, dependent: :destroy
  has_many :notifications, through: :notification_students

  mount_uploader :photo, BaseUploader
end
