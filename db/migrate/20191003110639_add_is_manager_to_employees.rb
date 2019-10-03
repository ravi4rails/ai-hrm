class AddIsManagerToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :is_manager, :boolean, default: false
  end
end
