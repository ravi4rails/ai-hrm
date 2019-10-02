class Employee < ApplicationRecord

  belongs_to :department, optional: true
  has_many :educational_credentials
  has_many :employee_relatives

  def name
    "#{self.first_name} #{self.middle_name} #{self.last_name}".strip
  end
  
  # validates :first_name, :middle_name, :last_name, :email, :date_of_birth, 
  #           :personal_contact, :emergency_contact, :address, :city, 
  #           :state, :country, :zipcode, :job_title, :job_description, 
  #           :date_of_joining, :gender, :marital_status, :blood_group, :religion,
  #           :employee_code, presence: true


  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Employee.create! row.to_hash
    end
  end     
end
