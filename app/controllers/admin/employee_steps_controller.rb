class Admin::EmployeeStepsController < AdminController
  include Wicked::Wizard
  steps :basic_profile, :address, :about_job, :info

  def show
    @employee = current_employee
    if params[:id] == "wicked_finish"
      redirect_to admin_employee_path(@employee), notice: "Thanks "
    else
      render_wizard
    end  
  end
  
  def update
    @employee = current_employee
    @employee.update(employee_params)
    render_wizard @employee
  end 

  private

    def employee_params
      params.require(:employee).permit!
    end

end
