require 'test_helper'

class ReserveControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reserve_new_url
    assert_response :success
  end

  test "should get confirm" do
    get reserve_confirm_url
    assert_response :success
  end

  test "should get complete" do
    get reserve_complete_url
    assert_response :success
  end

end
