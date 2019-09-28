require 'test_helper'

class EmployeeRelativeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee_relative_index_url
    assert_response :success
  end

  test "should get show" do
    get employee_relative_show_url
    assert_response :success
  end

  test "should get edit" do
    get employee_relative_edit_url
    assert_response :success
  end

  test "should get new" do
    get employee_relative_new_url
    assert_response :success
  end

end
