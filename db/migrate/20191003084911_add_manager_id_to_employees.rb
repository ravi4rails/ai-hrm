class AddManagerIdToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :manager
  end
end
