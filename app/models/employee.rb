class Employee < ApplicationRecord
  belongs_to :department, optional: true
  belongs_to :employee_grade, optional: true
  has_many :educational_credentials
  has_many :employee_relatives
  has_one :bank_detail
  has_many :leaves
  has_many :subordinates, class_name: "Employee",
                          foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee", optional: true
  # validates :first_name, :middle_name, :last_name, :email, :date_of_birth, :personal_contact, :emergency_contact, :address, :city, :state, :country, :zipcode, :job_title, :job_description, :gender, :marital_status, :blood_group, :religion, :employee_code, :is_active, presence: true

  def name
    "#{self.first_name} #{self.middle_name} #{self.last_name}".strip
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Employee.create! row.to_hash
    end
  end    

  ransacker :full_name do |parent|
    Arel::Nodes::InfixOperation.new('||',
      Arel::Nodes::InfixOperation.new('||',
        parent.table[:first_name], Arel::Nodes.build_quoted(' ')
      ),
      parent.table[:last_name]
    )
  end
end