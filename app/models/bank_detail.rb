class BankDetail < ApplicationRecord
  belongs_to :employee, optional: true
  validates :bank_name, :account_number, :branch, :ifsc_code, presence: true
end
