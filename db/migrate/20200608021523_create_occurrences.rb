class CreateOccurrences < ActiveRecord::Migration[6.0]
  def change
    create_table :occurrences do |t|
      t.string :description
      t.string :photo
      t.belongs_to :student, index: true
      t.timestamps
    end
  end
end
