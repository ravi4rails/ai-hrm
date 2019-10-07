class Admin::EmployeesController < AdminController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  
  def index
    @employees = Employee.all
    @q = Employee.ransack(params[:q])
    @employees = @q.result(distinct: true)
  end

  def new
    @employee = Employee.new
  end

  def import
    Employee.import(params[:file])
    redirect_to admin_employees_path(@employee), notice: "Employee imported."
  end

  def bulk_import; end

  def edit; end

  def manager
   @employee = Employee.find(params[:employee_id]) 
  end

  def assign_manager
    @manager = Employee.find(params[:manager][:manager_id])
    @subordinate = Employee.find(params[:manager][:employee_id])
    @subordinate.manager = @manager
    @subordinate.save
    EmployeeMailer.subordinate_email(@subordinate).deliver_now && EmployeeMailer.manager_email(@manager).deliver_now
    redirect_to admin_employees_path(@employee)
  end

  def subordinate
    @employee = Employee.find(params[:employee_id]) 
  end

  def assign_subordinate
    @subordinate = Employee.find(params[:subordinate][:employee_id])
    @manager = Employee.find(params[:subordinate][:manager_id])
    @manager.subordinates <<  @subordinate
    EmployeeMailer.manager_email(@manager).deliver_now && 
    EmployeeMailer.subordinate_email(@subordinate).deliver_now
    redirect_to admin_employees_path(@manager)
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      session[:employee_id] = @employee.id
      redirect_to admin_employee_steps_path, notice: 'Profile was successfully created.'
    else
      render :new 
    end
  end

  def update
    if @employee.update(employee_params)
      session[:employee_id] = @employee.id
      redirect_to admin_employee_steps_path, notice: 'Employee was successfully updated.'
    else
      render :edit 
    end
  end

  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to admin_employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit!
    end
end
