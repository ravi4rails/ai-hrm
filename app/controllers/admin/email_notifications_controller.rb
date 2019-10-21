class Admin::EmailNotificationsController < AdminController
  before_action :set_email_notification, only: [:edit, :show, :destroy, :update]

  def index
    @email_notifications = EmailNotification.all
  end

  def show;  end

  def edit
    get_employees
  end

  def new
    @email_notification = EmailNotification.new
    get_employees
  end

  def create
    @email_notification = EmailNotification.new(email_notification_params)
    if @email_notification.save
      @email_ids = params[:email_employee_notification][:employee_id].reject(&:blank?)
      @email_ids.each do |id|
        @email = Employee.find(id).email
        EmployeeMailer.email_notification(params[:email_notification][:subject], params[:email_notification][:description], @email).deliver_now
      end
     redirect_to admin_email_notification_path(@email_notification), notice: "email_notification has been created successfully."
    else
      render 'new'
    end      
  end 

  def update
    if @email_notification.update(email_notification_params)
      redirect_to admin_email_notification_path(@email_notification), notice: "email_notification has been updated successfully."
    else
      render 'edit'
    end    
  end
 
  def destroy
    @email_notification.destroy
    redirect_to admin_email_notifications_path, notice: "Educational Realtive has been deleted successfully."
  end

  private
    def set_email_notification
      @email_notification = EmailNotification.find(params[:id])
    end

    def get_employees
      @all_employees = Employee.all
      @email_notification_employee = @email_notification.email_employee_notifications .build
    end

    def email_notification_params
      params.require(:email_notification).permit!
    end

end
