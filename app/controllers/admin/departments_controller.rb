class Admin::DepartmentsController < AdminController
  before_action :set_department, only: [:edit, :show, :destroy, :update]
  before_action :authenticate_admin!

  def index
    @departments = Department.all
    @q = Department.ransack(params[:q])
    @departments = @q.result(distinct: true)
  end

  def show; end

  def new 
  	@department = Department.new
  end

  def edit; end

  def create
  	@department = Department.new(department_params)
  	if @department.save
  	 redirect_to admin_department_path(@department), notice: "Department has been created successfully."
  	else
  	  render 'new'
  	end     
  end

  def update
    if @department.update(department_params)
      redirect_to admin_department_path(@department), notice: "Department has been updated successfully."
    else
      render 'edit'
    end    
  end
  
  def destroy
    @department.destroy
    redirect_to admin_departments_path, notice: "Department has been deleted successfully."   
  end 

  private

    def department_params
      params.require(:department).permit!
    end

    def set_department
      @department = Department.find(params[:id])
    end

end
