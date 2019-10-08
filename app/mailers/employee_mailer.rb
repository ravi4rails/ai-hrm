class EmployeeMailer < ApplicationMailer
  default from: "from@example.com" 
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.employee_mailer.employee_email.subject
  #
  def current_user_email(current_user)
    @current_user = current_user
    mail(to: @current_user.email, subject: 'Employee has created successfully')
  end

  def manager_email(manager, subordinate)
    @manager = manager
    @subordinate = subordinate
    mail(to: @manager.email, subject: 'Subordinate has assigned successfully')  
  end

  def subordinate_email(subordinate)
    @subordinate = subordinate
    mail(to: @subordinate.email, subject: 'Manager has assigned successfully')  
  end  
end
