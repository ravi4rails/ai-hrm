class RemoveEstablishedFromToDepartments < ActiveRecord::Migration[5.2]
  def change
    remove_column :departments, :established_from, :date
  end
end
