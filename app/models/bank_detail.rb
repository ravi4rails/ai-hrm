class BankDetail < ApplicationRecord
  include Employeeable
  
  BANK = ['ALLAHABAD BANK', 'ANDHRA BANK','BANK OF BARODA', 'BANK OF INDIA','BANK OF MAHARASHTRA','CANARA BANK','CENTRAL BANK OF INDIA','CORPORATION BANK','INDIAN BANK','INDIAN OVERSEAS BANK','ORIENTAL BANK OF COMMERCE','PUNJAB AND SIND BANK','PUNJAB NATIONAL BANK','STATE BANK OF INDIA','SYNDICATE BANK','UCO BANK','UNION BANK OF INDIA','UNITED BANK OF INDIA', 'HDFC BANK','ICICI BANK','AXIS BANK','KOTAK MAHINDRA BANK','YES BANK','FEDRAL BANK','INDUSLAND BANK','RBL BANK','KARUR VYSYA BANK','BANDHAN BANK']
  
  validates :employee_id, uniqueness: { scope: :employee_id, message: 'has already bank account.' }
  validates :bank_name, :account_number, :branch, :ifsc_code, presence: true

end
