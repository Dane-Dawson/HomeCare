require 'test_helper'

class UpkeepsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get upkeeps_index_url
    assert_response :success
  end

end
