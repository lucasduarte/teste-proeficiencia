class Student < ApplicationRecord
  has_many :classrooms
  has_many :courses, through: :classrooms

  validates :name, presence: true, length: { minimum: 3, maximum: 45 }
  validates :register_number, presence: true, length: { minimum: 5, maximum: 45 }, uniqueness: true
  validates :status, presence: true
end
