class EmailNotification < ApplicationRecord
  has_many :email_employee_notifications, dependent: :destroy
  has_many :employees, through: :email_employee_notifications
  mount_uploader :attachment, AttachmentUploader
end
