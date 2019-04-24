require 'test_helper'

class SyutubahyoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get syutubahyo_index_url
    assert_response :success
  end

end
