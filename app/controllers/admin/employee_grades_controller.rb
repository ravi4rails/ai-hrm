class Admin::EmployeeGradesController < AdminController
  before_action :set_employee_grade, only: [:edit, :show, :destroy, :update] 

  def index
    @employee_grades = EmployeeGrade.all 
  end

  def show
  end

  def new
    @employee_grade = EmployeeGrade.new
  end

  def edit
  end

  def create
    @employee_grade = EmployeeGrade.new(employee_grade_params)
    if @employee_grade.save
     redirect_to admin_employee_grade_path(@employee_grade), notice: "employee_grade has been created successfully."
    else
      render 'new'
    end      
  end

  def update
    if @employee_grade.update(employee_grade_params)
      redirect_to admin_employee_grade_path(@employee_grade), notice: "employee_grade has been updated successfully."
    else
      render 'edit'
    end    
  end

  def destroy
    @employee_grade.destroy
    redirect_to admin_employee_grades_path, notice: "Educational grade has been deleted successfully."
  end

  private
    def set_employee_grade
      @employee_grade = EmployeeGrade.find(params[:id])
    end

    def employee_grade_params
      params.require(:employee_grade).permit!
    end

end
