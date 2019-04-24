require 'test_helper'

class BacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bac = bacs(:one)
  end

  test "should get index" do
    get bacs_url
    assert_response :success
  end

  test "should get new" do
    get new_bac_url
    assert_response :success
  end

  test "should create bac" do
    assert_difference('Bac.count') do
      post bacs_url, params: { bac: { a10: @bac.a10, a11: @bac.a11, a12: @bac.a12, a13: @bac.a13, a14: @bac.a14, a15: @bac.a15, a16: @bac.a16, a17: @bac.a17, a18: @bac.a18, a19: @bac.a19, a1: @bac.a1, a20: @bac.a20, a21: @bac.a21, a22: @bac.a22, a23: @bac.a23, a24: @bac.a24, a25: @bac.a25, a26: @bac.a26, a27: @bac.a27, a28: @bac.a28, a29: @bac.a29, a2: @bac.a2, a30: @bac.a30, a31: @bac.a31, a32: @bac.a32, a33: @bac.a33, a34: @bac.a34, a35: @bac.a35, a3: @bac.a3, a4: @bac.a4, a5: @bac.a5, a6: @bac.a6, a7: @bac.a7, a8: @bac.a8, a9: @bac.a9 } }
    end

    assert_redirected_to bac_url(Bac.last)
  end

  test "should show bac" do
    get bac_url(@bac)
    assert_response :success
  end

  test "should get edit" do
    get edit_bac_url(@bac)
    assert_response :success
  end

  test "should update bac" do
    patch bac_url(@bac), params: { bac: { a10: @bac.a10, a11: @bac.a11, a12: @bac.a12, a13: @bac.a13, a14: @bac.a14, a15: @bac.a15, a16: @bac.a16, a17: @bac.a17, a18: @bac.a18, a19: @bac.a19, a1: @bac.a1, a20: @bac.a20, a21: @bac.a21, a22: @bac.a22, a23: @bac.a23, a24: @bac.a24, a25: @bac.a25, a26: @bac.a26, a27: @bac.a27, a28: @bac.a28, a29: @bac.a29, a2: @bac.a2, a30: @bac.a30, a31: @bac.a31, a32: @bac.a32, a33: @bac.a33, a34: @bac.a34, a35: @bac.a35, a3: @bac.a3, a4: @bac.a4, a5: @bac.a5, a6: @bac.a6, a7: @bac.a7, a8: @bac.a8, a9: @bac.a9 } }
    assert_redirected_to bac_url(@bac)
  end

  test "should destroy bac" do
    assert_difference('Bac.count', -1) do
      delete bac_url(@bac)
    end

    assert_redirected_to bacs_url
  end
end
