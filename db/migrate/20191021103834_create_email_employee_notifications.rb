class CreateEmailEmployeeNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :email_employee_notifications do |t|
      t.references :employee, foreign_key: true
      t.references :email_notification, foreign_key: true

      t.timestamps
    end
  end
end
