class EducationalCredential < ApplicationRecord
  belongs_to :employee, optional: true
end
