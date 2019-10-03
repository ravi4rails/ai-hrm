class AddManagerIdToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :manager, foreign_key: true
  end
end
