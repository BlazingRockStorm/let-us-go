require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "edit_event" do
    mail = UserMailer.edit_event
    assert_equal "Edit event", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "delete_event" do
    mail = UserMailer.delete_event
    assert_equal "Delete event", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
