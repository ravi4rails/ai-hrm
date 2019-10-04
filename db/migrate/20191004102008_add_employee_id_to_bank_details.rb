class AddEmployeeIdToBankDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :bank_details, :employee, foreign_key: true
  end
end
