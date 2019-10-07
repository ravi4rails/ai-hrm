class Admin::EmployeeStepsController < AdminController
  include Wicked::Wizard
  steps :basic_profile, :address, :about_job, :info

  def show
    @employee = current_employee
    if params[:id] == "wicked_finish"
      EmployeeMailer.current_user_email(current_admin).deliver_now
      redirect_to admin_employee_path(@employee), notice: "Employee was successfully created "
    else
      render_wizard
    end  
  end
  
  def update
    @employee = current_employee
    @employee.update(employee_params)
    if params[:id] == "basic_profile"
      render_wizard @employee, notice: 'Basic profile was successfully  created.'
    elsif params[:id] == "address"
      render_wizard @employee, notice: 'Address was successfully created.'  
    elsif params[:id] == "about_job"
      render_wizard @employee, notice: 'About job was successfully created.'
    elsif params[:id] == "info"
      render_wizard @employee, notice: 'Employee was successfully created.'
    end     
  end 

  private
    def employee_params
      params.require(:employee).permit!
    end

end
