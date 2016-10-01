class Classroom < ApplicationRecord
  belongs_to :course
  belongs_to :student
  
  validates :student_id, presence: true
  validates :course_id, presence: true
end
