class AddEstablishedFromToDepartment < ActiveRecord::Migration[5.2]
  def change
    add_column :departments, :established_from, :date
  end
end
