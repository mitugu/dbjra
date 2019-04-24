require 'test_helper'

class ZkbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zkb = zkbs(:one)
  end

  test "should get index" do
    get zkbs_url
    assert_response :success
  end

  test "should get new" do
    get new_zkb_url
    assert_response :success
  end

  test "should create zkb" do
    assert_difference('Zkb.count') do
      post zkbs_url, params: { zkb: { a10: @zkb.a10, a11: @zkb.a11, a12: @zkb.a12, a13: @zkb.a13, a14: @zkb.a14, a15: @zkb.a15, a16: @zkb.a16, a17: @zkb.a17, a18: @zkb.a18, a19: @zkb.a19, a1: @zkb.a1, a20: @zkb.a20, a21: @zkb.a21, a22: @zkb.a22, a23: @zkb.a23, a24: @zkb.a24, a25: @zkb.a25, a26: @zkb.a26, a27: @zkb.a27, a28: @zkb.a28, a29: @zkb.a29, a2: @zkb.a2, a30: @zkb.a30, a31: @zkb.a31, a32: @zkb.a32, a33: @zkb.a33, a34: @zkb.a34, a35: @zkb.a35, a36: @zkb.a36, a37: @zkb.a37, a38: @zkb.a38, a39: @zkb.a39, a3: @zkb.a3, a40: @zkb.a40, a41: @zkb.a41, a42: @zkb.a42, a43: @zkb.a43, a44: @zkb.a44, a45: @zkb.a45, a46: @zkb.a46, a47: @zkb.a47, a48: @zkb.a48, a49: @zkb.a49, a4: @zkb.a4, a50: @zkb.a50, a51: @zkb.a51, a52: @zkb.a52, a53: @zkb.a53, a54: @zkb.a54, a55: @zkb.a55, a56: @zkb.a56, a57: @zkb.a57, a58: @zkb.a58, a59: @zkb.a59, a5: @zkb.a5, a60: @zkb.a60, a61: @zkb.a61, a6: @zkb.a6, a7: @zkb.a7, a8: @zkb.a8, a9: @zkb.a9 } }
    end

    assert_redirected_to zkb_url(Zkb.last)
  end

  test "should show zkb" do
    get zkb_url(@zkb)
    assert_response :success
  end

  test "should get edit" do
    get edit_zkb_url(@zkb)
    assert_response :success
  end

  test "should update zkb" do
    patch zkb_url(@zkb), params: { zkb: { a10: @zkb.a10, a11: @zkb.a11, a12: @zkb.a12, a13: @zkb.a13, a14: @zkb.a14, a15: @zkb.a15, a16: @zkb.a16, a17: @zkb.a17, a18: @zkb.a18, a19: @zkb.a19, a1: @zkb.a1, a20: @zkb.a20, a21: @zkb.a21, a22: @zkb.a22, a23: @zkb.a23, a24: @zkb.a24, a25: @zkb.a25, a26: @zkb.a26, a27: @zkb.a27, a28: @zkb.a28, a29: @zkb.a29, a2: @zkb.a2, a30: @zkb.a30, a31: @zkb.a31, a32: @zkb.a32, a33: @zkb.a33, a34: @zkb.a34, a35: @zkb.a35, a36: @zkb.a36, a37: @zkb.a37, a38: @zkb.a38, a39: @zkb.a39, a3: @zkb.a3, a40: @zkb.a40, a41: @zkb.a41, a42: @zkb.a42, a43: @zkb.a43, a44: @zkb.a44, a45: @zkb.a45, a46: @zkb.a46, a47: @zkb.a47, a48: @zkb.a48, a49: @zkb.a49, a4: @zkb.a4, a50: @zkb.a50, a51: @zkb.a51, a52: @zkb.a52, a53: @zkb.a53, a54: @zkb.a54, a55: @zkb.a55, a56: @zkb.a56, a57: @zkb.a57, a58: @zkb.a58, a59: @zkb.a59, a5: @zkb.a5, a60: @zkb.a60, a61: @zkb.a61, a6: @zkb.a6, a7: @zkb.a7, a8: @zkb.a8, a9: @zkb.a9 } }
    assert_redirected_to zkb_url(@zkb)
  end

  test "should destroy zkb" do
    assert_difference('Zkb.count', -1) do
      delete zkb_url(@zkb)
    end

    assert_redirected_to zkbs_url
  end
end
