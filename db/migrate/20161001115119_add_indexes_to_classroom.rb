class AddIndexesToClassroom < ActiveRecord::Migration[5.0]
  def change
      add_reference :classrooms, :student, index: true, foreign_key: true
      add_reference :classrooms, :course, index: true, foreign_key: true
  end
end
