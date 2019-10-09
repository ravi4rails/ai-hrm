class AddEmployeeGradeIdToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :employee_grade, foreign_key: true
  end
end
