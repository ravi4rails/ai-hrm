require 'test_helper'

class BankDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank_detail = bank_details(:one)
  end

  test "should get index" do
    get bank_details_url
    assert_response :success
  end

  test "should get new" do
    get new_bank_detail_url
    assert_response :success
  end

  test "should create bank_detail" do
    assert_difference('BankDetail.count') do
      post bank_details_url, params: { bank_detail: { account_number: @bank_detail.account_number, bank_name: @bank_detail.bank_name, branch: @bank_detail.branch, ifsc_code: @bank_detail.ifsc_code } }
    end

    assert_redirected_to bank_detail_url(BankDetail.last)
  end

  test "should show bank_detail" do
    get bank_detail_url(@bank_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_bank_detail_url(@bank_detail)
    assert_response :success
  end

  test "should update bank_detail" do
    patch bank_detail_url(@bank_detail), params: { bank_detail: { account_number: @bank_detail.account_number, bank_name: @bank_detail.bank_name, branch: @bank_detail.branch, ifsc_code: @bank_detail.ifsc_code } }
    assert_redirected_to bank_detail_url(@bank_detail)
  end

  test "should destroy bank_detail" do
    assert_difference('BankDetail.count', -1) do
      delete bank_detail_url(@bank_detail)
    end

    assert_redirected_to bank_details_url
  end
end
