require 'test_helper'

class ZedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zed = zeds(:one)
  end

  test "should get index" do
    get zeds_url
    assert_response :success
  end

  test "should get new" do
    get new_zed_url
    assert_response :success
  end

  test "should create zed" do
    assert_difference('Zed.count') do
      post zeds_url, params: { zed: { a10: @zed.a10, a11: @zed.a11, a12: @zed.a12, a13: @zed.a13, a14: @zed.a14, a15: @zed.a15, a16: @zed.a16, a17: @zed.a17, a18: @zed.a18, a19: @zed.a19, a1: @zed.a1, a20: @zed.a20, a21: @zed.a21, a22: @zed.a22, a23: @zed.a23, a24: @zed.a24, a25: @zed.a25, a26: @zed.a26, a27: @zed.a27, a28: @zed.a28, a29: @zed.a29, a2: @zed.a2, a30: @zed.a30, a31: @zed.a31, a32: @zed.a32, a33: @zed.a33, a34: @zed.a34, a35: @zed.a35, a36: @zed.a36, a37: @zed.a37, a38: @zed.a38, a39: @zed.a39, a3: @zed.a3, a40: @zed.a40, a41: @zed.a41, a42: @zed.a42, a43: @zed.a43, a44: @zed.a44, a45: @zed.a45, a46: @zed.a46, a47: @zed.a47, a48: @zed.a48, a49: @zed.a49, a4: @zed.a4, a50: @zed.a50, a51: @zed.a51, a52: @zed.a52, a53: @zed.a53, a54: @zed.a54, a55: @zed.a55, a56: @zed.a56, a57: @zed.a57, a58: @zed.a58, a59: @zed.a59, a5: @zed.a5, a60: @zed.a60, a61: @zed.a61, a6: @zed.a6, a7: @zed.a7, a8: @zed.a8, a9: @zed.a9 } }
    end

    assert_redirected_to zed_url(Zed.last)
  end

  test "should show zed" do
    get zed_url(@zed)
    assert_response :success
  end

  test "should get edit" do
    get edit_zed_url(@zed)
    assert_response :success
  end

  test "should update zed" do
    patch zed_url(@zed), params: { zed: { a10: @zed.a10, a11: @zed.a11, a12: @zed.a12, a13: @zed.a13, a14: @zed.a14, a15: @zed.a15, a16: @zed.a16, a17: @zed.a17, a18: @zed.a18, a19: @zed.a19, a1: @zed.a1, a20: @zed.a20, a21: @zed.a21, a22: @zed.a22, a23: @zed.a23, a24: @zed.a24, a25: @zed.a25, a26: @zed.a26, a27: @zed.a27, a28: @zed.a28, a29: @zed.a29, a2: @zed.a2, a30: @zed.a30, a31: @zed.a31, a32: @zed.a32, a33: @zed.a33, a34: @zed.a34, a35: @zed.a35, a36: @zed.a36, a37: @zed.a37, a38: @zed.a38, a39: @zed.a39, a3: @zed.a3, a40: @zed.a40, a41: @zed.a41, a42: @zed.a42, a43: @zed.a43, a44: @zed.a44, a45: @zed.a45, a46: @zed.a46, a47: @zed.a47, a48: @zed.a48, a49: @zed.a49, a4: @zed.a4, a50: @zed.a50, a51: @zed.a51, a52: @zed.a52, a53: @zed.a53, a54: @zed.a54, a55: @zed.a55, a56: @zed.a56, a57: @zed.a57, a58: @zed.a58, a59: @zed.a59, a5: @zed.a5, a60: @zed.a60, a61: @zed.a61, a6: @zed.a6, a7: @zed.a7, a8: @zed.a8, a9: @zed.a9 } }
    assert_redirected_to zed_url(@zed)
  end

  test "should destroy zed" do
    assert_difference('Zed.count', -1) do
      delete zed_url(@zed)
    end

    assert_redirected_to zeds_url
  end
end
