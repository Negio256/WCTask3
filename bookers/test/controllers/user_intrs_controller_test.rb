require 'test_helper'

class UserIntrsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_intrs_create_url
    assert_response :success
  end

  test "should get update" do
    get user_intrs_update_url
    assert_response :success
  end

end
