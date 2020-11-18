require 'test_helper'

class Page3ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page3_index_url
    assert_response :success
  end

end
