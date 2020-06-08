class DropTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :school_classes
    drop_table :school_disciplines
    drop_table :teachers
  end
end
