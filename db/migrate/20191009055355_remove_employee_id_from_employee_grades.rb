class RemoveEmployeeIdFromEmployeeGrades < ActiveRecord::Migration[5.2]
  def change
    remove_reference :employee_grades, :employee, foreign_key: true
  end
end
