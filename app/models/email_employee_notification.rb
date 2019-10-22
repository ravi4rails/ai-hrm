class EmailEmployeeNotification < ApplicationRecord
  belongs_to :employee
  belongs_to :email_notification
  mount_uploader :attachment, AttachmentUploader
end
