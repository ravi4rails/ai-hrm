class EmailEmployeeNotification < ApplicationRecord
  belongs_to :employee
  belongs_to :email_notification
end
