require 'test_helper'

class EmployeeStepsControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get employee_steps_controller_url
    assert_response :success
  end

end
