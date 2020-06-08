class CreateNotificationStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :notification_students do |t|
      t.belongs_to :student, index: true
      t.belongs_to :notification, idex: true
      t.timestamps
    end
  end
end
