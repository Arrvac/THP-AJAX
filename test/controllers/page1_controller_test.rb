require 'test_helper'

class Page1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index.html.erb" do
    get page1_index.html.erb_url
    assert_response :success
  end

end
