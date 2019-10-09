require 'test_helper'

class EmployeeGradesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee_grades_index_url
    assert_response :success
  end

  test "should get show" do
    get employee_grades_show_url
    assert_response :success
  end

  test "should get new" do
    get employee_grades_new_url
    assert_response :success
  end

  test "should get edit" do
    get employee_grades_edit_url
    assert_response :success
  end

end
