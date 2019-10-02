class Admin::EmployeesController < AdminController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

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

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      session[:employee_id] = @employee.id
      redirect_to admin_employee_steps_path
    else
      render :new 
    end
  end

  def update
    if @employee.update(employee_params)
      session[:employee_id] = @employee.id
      redirect_to admin_employee_steps_path
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
