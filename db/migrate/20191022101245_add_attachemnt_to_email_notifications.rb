class AddAttachemntToEmailNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :email_notifications, :attachment, :string
  end
end
