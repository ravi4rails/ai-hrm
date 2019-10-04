class Admin::BankDetailsController < AdminController
  before_action :set_bank_detail, only: [:show, :edit, :update, :destroy]

  def index
    @bank_details = BankDetail.all
  end

  def show;end

  def new
    @bank_detail = BankDetail.new
  end

  def edit;end

  def create
    @bank_detail = BankDetail.new(bank_detail_params)

    if @bank_detail.save
     redirect_to admin_bank_detail_path(@bank_detail), notice: "Bank details has been created successfully."
    else

     render 'new'
    end
  end

  def update
    if @bank_detail.update(bank_detail_params)
       redirect_to admin_bank_detail_path(@bank_detail), notice: "Bank Detail has been updated successfully."
    else
      render 'edit'
    end 
  end

  def destroy
    @bank_detail.destroy
    redirect_to admin_bank_details_path, notice: 'Bank detail was successfully destroyed.' 
  end

  private
    def set_bank_detail
      @bank_detail = BankDetail.find(params[:id])
    end

    def bank_detail_params
      params.require(:bank_detail).permit(:bank_name, :account_number, :branch, :ifsc_code)
    end
end
