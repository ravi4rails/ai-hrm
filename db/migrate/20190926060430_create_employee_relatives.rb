class CreateEmployeeRelatives < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_relatives do |t|
      t.string :name
      t.string :contact
      t.string :address
      t.string :relation
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
