class EmployeeGrade < ApplicationRecord
  has_many :employees
  validates :name,  presence: true
end
