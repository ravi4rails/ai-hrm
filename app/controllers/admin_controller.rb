class AdminController < ApplicationController
  layout 'admin'
  helper_method :current_employee
  before_action :authenticate_admin!
  private

  def current_employee
    @current_employee ||= Employee.find_by_id(session[:employee_id]) if session[:employee_id]
  end
end
