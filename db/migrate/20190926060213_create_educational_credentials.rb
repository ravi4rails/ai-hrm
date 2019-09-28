class CreateEducationalCredentials < ActiveRecord::Migration[5.2]
  def change
    create_table :educational_credentials do |t|
      t.string :course
      t.string :board_or_university
      t.string :city
      t.string :marks
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
