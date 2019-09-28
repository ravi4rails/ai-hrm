require 'test_helper'

class EmployeeRelativesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee_relatives_index_url
    assert_response :success
  end

  test "should get show" do
    get employee_relatives_show_url
    assert_response :success
  end

  test "should get edit" do
    get employee_relatives_edit_url
    assert_response :success
  end

  test "should get new" do
    get employee_relatives_new_url
    assert_response :success
  end

end
