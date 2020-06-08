class AddColumnsToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :responsible_email, :string
    add_column :students, :cpf, :string
    add_column :students, :email, :string
    add_column :students, :photo, :string
  end
end
