module Employeeable

  extend ActiveSupport::Concern

  included do 
    belongs_to :employee, optional: true
  end

end
