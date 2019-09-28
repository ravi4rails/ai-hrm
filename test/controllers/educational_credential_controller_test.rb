require 'test_helper'

class EducationalCredentialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get educational_credential_index_url
    assert_response :success
  end

  test "should get show" do
    get educational_credential_show_url
    assert_response :success
  end

  test "should get edit" do
    get educational_credential_edit_url
    assert_response :success
  end

  test "should get new" do
    get educational_credential_new_url
    assert_response :success
  end

end
