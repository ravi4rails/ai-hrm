class Employee < ApplicationRecord

  belongs_to :department, optional: true
  has_many :educational_credentials
  has_many :employee_relatives

  def name
    "#{self.first_name} #{self.middle_name} #{self.last_name}".strip
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Employee.create! row.to_hash
    end
  end     
end
