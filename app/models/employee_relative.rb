class EmployeeRelative < ApplicationRecord
  belongs_to :employee, optional: true
end
