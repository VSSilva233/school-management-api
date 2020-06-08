class Occurrence < ApplicationRecord
  include RailsAdmin::Occurrences
  belongs_to :student

  validates_presence_of :description
  mount_uploader :photo, BaseUploader

  def title
    "Ata #{self.id}"
  end
end
