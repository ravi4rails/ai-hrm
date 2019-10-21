class EmailNotification < ApplicationRecord
  has_many :email_employee_notifications
  has_many :employees, through: :email_employee_notifications
end
