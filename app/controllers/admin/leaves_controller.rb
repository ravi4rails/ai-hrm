class Admin::LeavesController < AdminController
  before_action :set_leave, only: [:edit, :show, :destroy, :update]

  def index
    @leaves = Leave.all
  end

  def show;  end

  def edit;  end

  def new
    @leave = Leave.new
  end

  def create
    @leave = Leave.new(leave_params)
    if @leave.save
     redirect_to admin_leafe_path(@leave), notice: "Leave has been created successfully."
    else
      render 'new'
    end      
  end 

  def update
    if @leave.update(leave_params)
      redirect_to admin_leafe_path(@leave), notice: "Leave has been updated successfully."
    else
      render 'edit'
    end    
  end
 
  def destroy
    @leave.destroy
    redirect_to admin_leaves_path, notice: "Educational Realtive has been deleted successfully."
  end

  private

    def leave_params
      params.require(:leave).permit!
    end

    def set_leave
      @leave = Leave.find(params[:id])
    end
end
