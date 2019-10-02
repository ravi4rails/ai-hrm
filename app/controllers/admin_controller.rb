class AdminController < ApplicationController
  layout 'admin'
  private

  def current_employee
    @current_employee ||= Employee.find_by_id(session[:employee_id]) if session[:employee_id]
  end
  helper_method :current_employee
end
