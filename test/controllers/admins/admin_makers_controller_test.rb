require 'test_helper'

class Admins::AdminMakersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_admin_makers_new_url
    assert_response :success
  end

  test "should get create" do
    get admins_admin_makers_create_url
    assert_response :success
  end

end
