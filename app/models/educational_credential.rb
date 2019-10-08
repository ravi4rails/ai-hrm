class EducationalCredential < ApplicationRecord  
  include Employeeable
  validates :course, :board_or_university, :city, :marks, presence: true 
end
