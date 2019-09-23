require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { address: @employee.address, blood_group: @employee.blood_group, city: @employee.city, country: @employee.country, date_of_birth: @employee.date_of_birth, date_of_joining: @employee.date_of_joining, email: @employee.email, emergency_contact: @employee.emergency_contact, employee_code: @employee.employee_code, first_name: @employee.first_name, gender: @employee.gender, is_active: @employee.is_active, job_description: @employee.job_description, job_title: @employee.job_title, last_name: @employee.last_name, marital_status: @employee.marital_status, middle_name: @employee.middle_name, personal_contact: @employee.personal_contact, profile_photo: @employee.profile_photo, religion: @employee.religion, state: @employee.state, zipcode: @employee.zipcode } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { address: @employee.address, blood_group: @employee.blood_group, city: @employee.city, country: @employee.country, date_of_birth: @employee.date_of_birth, date_of_joining: @employee.date_of_joining, email: @employee.email, emergency_contact: @employee.emergency_contact, employee_code: @employee.employee_code, first_name: @employee.first_name, gender: @employee.gender, is_active: @employee.is_active, job_description: @employee.job_description, job_title: @employee.job_title, last_name: @employee.last_name, marital_status: @employee.marital_status, middle_name: @employee.middle_name, personal_contact: @employee.personal_contact, profile_photo: @employee.profile_photo, religion: @employee.religion, state: @employee.state, zipcode: @employee.zipcode } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
