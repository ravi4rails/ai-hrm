class Employee < ApplicationRecord

  belongs_to :department, optional: true
  has_many :educational_credentials
  has_many :employee_relatives
  has_one :bank_detail
  has_many :subordinates, class_name: "Employee",
                          foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee", optional: true

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
