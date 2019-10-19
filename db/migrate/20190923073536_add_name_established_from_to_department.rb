class AddNameEstablishedFromToDepartment < ActiveRecord::Migration[5.2]
  def change
    add_column :departments, :name, :string
    # add_column :departments, :established_from, :datetype
  end
end
