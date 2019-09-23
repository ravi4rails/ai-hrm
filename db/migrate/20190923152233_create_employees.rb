class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.date :date_of_birth
      t.string :personal_contact
      t.string :emergency_contact
      t.string :profile_photo
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :job_title
      t.text :job_description
      t.date :date_of_joining
      t.string :gender
      t.string :marital_status
      t.string :blood_group
      t.string :religion
      t.string :employee_code
      t.boolean :is_active

      t.timestamps
    end
  end
end
