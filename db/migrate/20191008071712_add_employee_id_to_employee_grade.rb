class AddEmployeeIdToEmployeeGrade < ActiveRecord::Migration[5.2]
  def change
    add_reference :employee_grades, :employee, foreign_key: true
  end
end
