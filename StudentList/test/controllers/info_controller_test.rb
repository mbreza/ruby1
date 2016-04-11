require 'test_helper'

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get personal" do
    get info_personal_url
    assert_response :success
  end

end
