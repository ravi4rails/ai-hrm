class Admin::EducationalCredentialsController < AdminController
  before_action :set_educational_credential, only: [:edit, :show, :destroy, :update]
  before_action :authenticate_admin!

  def index
    @educational_credentials = EducationalCredential.all
  end

  def show;  end

  def edit;  end

  def new
    @educational_credential = EducationalCredential.new
  end

  def create
    @educational_credential = EducationalCredential.new(educational_credential_params)
    if @educational_credential.save
     redirect_to admin_educational_credential_path(@educational_credential), notice: "educational_credential has been created successfully."
    else
      render 'new'
    end      
  end 

  def update
    if @educational_credential.update(educational_credential_params)
      redirect_to admin_educational_credential_path(@educational_credential), notice: "educational_credential has been updated successfully."
    else
      render 'edit'
    end    
  end
 
  def destroy
    @educational_credential.destroy
    redirect_to admin_educational_credentials_path, notice: "Educational credential has been deleted successfully."
  end

  private

    def educational_credential_params
      params.require(:educational_credential).permit!
    end

    def set_educational_credential
      @educational_credential = EducationalCredential.find(params[:id])
    end
end
