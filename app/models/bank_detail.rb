class BankDetail < ApplicationRecord
  belongs_to :employee, optional: true
end
