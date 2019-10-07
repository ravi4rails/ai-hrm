require 'test_helper'

class EmployeeMailerTest < ActionMailer::TestCase
  test "employee_email" do
    mail = EmployeeMailer.employee_email
    assert_equal "Employee email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
