class Employee < ApplicationRecord

  def name
    "#{self.first_name} #{self.middle_name} #{self.last_name}".strip
  end

end
