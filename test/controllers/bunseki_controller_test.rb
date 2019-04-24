require 'test_helper'

class BunsekiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bunseki_index_url
    assert_response :success
  end

end
