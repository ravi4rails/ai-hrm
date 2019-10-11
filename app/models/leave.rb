class Leave < ApplicationRecord
  belongs_to :employee, optional: true
end
