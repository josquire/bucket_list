require 'test_helper'

class StaticpageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staticpage_index_url
    assert_response :success
  end

end
