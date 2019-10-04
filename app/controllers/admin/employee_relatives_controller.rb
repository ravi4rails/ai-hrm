class Admin::EmployeeRelativesController < AdminController
  before_action :set_employee_relative, only: [:edit, :show, :destroy, :update]

  def index
    @employee_relatives = EmployeeRelative.all
  end

  def show;  end

  def edit;  end

  def new
    @employee_relative = EmployeeRelative.new
  end

  def create
    @employee_relative = EmployeeRelative.new(employee_relative_params)
    if @employee_relative.save
     redirect_to admin_employee_relative_path(@employee_relative), notice: "employee_relative has been created successfully."
    else
      render 'new'
    end      
  end 

  def update
    if @employee_relative.update(employee_relative_params)
      redirect_to admin_employee_relative_path(@employee_relative), notice: "employee_relative has been updated successfully."
    else
      render 'edit'
    end    
  end
 
  def destroy
    @employee_relative.destroy
    redirect_to admin_employee_relatives_path, notice: "Educational Realtive has been deleted successfully."
  end

  private

    def employee_relative_params
      params.require(:employee_relative).permit!
    end

    def set_employee_relative
      @employee_relative = EmployeeRelative.find(params[:id])
    end
end
