require 'test_helper'

class EducationalCredentialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get educational_credentials_index_url
    assert_response :success
  end

  test "should get show" do
    get educational_credentials_show_url
    assert_response :success
  end

  test "should get edit" do
    get educational_credentials_edit_url
    assert_response :success
  end

  test "should get new" do
    get educational_credentials_new_url
    assert_response :success
  end

end
