require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "new_address" do
    mail = Notifications.new_address
    assert_equal "New address", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
