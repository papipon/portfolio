require 'test_helper'

class AdminImgControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_img_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_img_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_img_update_url
    assert_response :success
  end

end
