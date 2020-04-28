class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :responsible_phone
      t.string :responsible_name
      t.date   :birthday
      t.timestamps
    end
  end
end
