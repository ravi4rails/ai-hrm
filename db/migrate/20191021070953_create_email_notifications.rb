class CreateEmailNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :email_notifications do |t|
      t.string :subject
      t.string :description

      t.timestamps
    end
  end
end
