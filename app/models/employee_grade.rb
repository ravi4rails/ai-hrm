class EmployeeGrade < ApplicationRecord
  validates :employee_id, uniqueness: { scope: :employee_id, message: 'has already employee grade.' }
  validates :name,  presence: true
end
