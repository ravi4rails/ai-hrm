class EmployeeRelative < ApplicationRecord
  include Employeeable
  validates :name, :contact, :address, :relation, presence: true 
end
