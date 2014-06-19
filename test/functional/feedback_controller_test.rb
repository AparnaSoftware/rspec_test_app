require 'test_helper'

class FeedbackControllerTest < ActionController::TestCase
  test "should get feedback_form" do
    get :feedback_form
    assert_response :success
  end

  test "should get send_email" do
    get :send_email
    assert_response :success
  end

end
