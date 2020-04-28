class CreateSchoolDisciplines < ActiveRecord::Migration[6.0]
  def change
    create_table :school_disciplines do |t|
      t.string :name
      t.timestamps
    end
  end
end
