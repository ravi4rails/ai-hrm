class AddEmployeeIdToLeaves < ActiveRecord::Migration[5.2]
  def change
    add_reference :leaves, :employee, foreign_key: true
  end
end
