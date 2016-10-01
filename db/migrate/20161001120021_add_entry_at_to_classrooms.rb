class AddEntryAtToClassrooms < ActiveRecord::Migration[5.0]
  def change
    add_column :classrooms, :entry_at, :date
  end
end
