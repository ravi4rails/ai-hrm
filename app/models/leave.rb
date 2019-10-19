class Leave < ApplicationRecord
  include Employeeable
  validate :check_total_assigned_leaves
 
  def check_total_assigned_leaves
    if employee.employee_grade.present? 
      grade_name = employee.employee_grade.name
      if grade_name == 'A'
        if total_assigned_leaves.to_i > 16
          errors.add('Leaves',  "can not be greater than 16 for grade #{grade_name} employee")
        elsif total_assigned_leaves.to_i < 16
          errors.add('Leaves',  "can not be less than 16 for grade #{grade_name} employee")
        end
      elsif grade_name == 'B'
        if total_assigned_leaves.to_i > 12
          errors.add('Leaves', "can not be greater than 12 for grade #{grade_name} employee")
        elsif total_assigned_leaves.to_i < 12
          errors.add('Leaves', "can not be less than `12 for grade #{grade_name} employee")    
        end   
      elsif grade_name == 'C'
        if total_assigned_leaves.to_i > 10
          errors.add('Leaves', "can not be greater than 10 for grade #{grade_name} employee")
        elsif total_assigned_leaves.to_i < 10
          errors.add('Leaves', "can not be less than 10 for grade #{grade_name} employee")    
        end
      elsif grade_name == 'D'
        if total_assigned_leaves.to_i > 8
          errors.add('Leaves', "can not be greater than 8 for grade #{grade_name} employee")
        elsif total_assigned_leaves.to_i < 8
          errors.add('Leaves', "can not be less than 8 for grade #{grade_name} employee")    
        end
      end        
    end
  end  
end
