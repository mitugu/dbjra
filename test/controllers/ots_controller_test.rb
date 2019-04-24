require 'test_helper'

class OtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ot = ots(:one)
  end

  test "should get index" do
    get ots_url
    assert_response :success
  end

  test "should get new" do
    get new_ot_url
    assert_response :success
  end

  test "should create ot" do
    assert_difference('Ot.count') do
      post ots_url, params: { ot: { a10: @ot.a10, a11: @ot.a11, a12: @ot.a12, a13: @ot.a13, a14: @ot.a14, a15: @ot.a15, a16: @ot.a16, a17: @ot.a17, a18: @ot.a18, a19: @ot.a19, a1: @ot.a1, a20: @ot.a20, a21: @ot.a21, a22: @ot.a22, a23: @ot.a23, a24: @ot.a24, a25: @ot.a25, a26: @ot.a26, a27: @ot.a27, a28: @ot.a28, a29: @ot.a29, a2: @ot.a2, a30: @ot.a30, a31: @ot.a31, a32: @ot.a32, a33: @ot.a33, a34: @ot.a34, a35: @ot.a35, a36: @ot.a36, a37: @ot.a37, a38: @ot.a38, a39: @ot.a39, a3: @ot.a3, a40: @ot.a40, a41: @ot.a41, a42: @ot.a42, a43: @ot.a43, a44: @ot.a44, a45: @ot.a45, a46: @ot.a46, a47: @ot.a47, a48: @ot.a48, a49: @ot.a49, a4: @ot.a4, a50: @ot.a50, a51: @ot.a51, a52: @ot.a52, a53: @ot.a53, a54: @ot.a54, a55: @ot.a55, a56: @ot.a56, a57: @ot.a57, a58: @ot.a58, a59: @ot.a59, a5: @ot.a5, a60: @ot.a60, a61: @ot.a61, a6: @ot.a6, a7: @ot.a7, a8: @ot.a8, a9: @ot.a9 } }
    end

    assert_redirected_to ot_url(Ot.last)
  end

  test "should show ot" do
    get ot_url(@ot)
    assert_response :success
  end

  test "should get edit" do
    get edit_ot_url(@ot)
    assert_response :success
  end

  test "should update ot" do
    patch ot_url(@ot), params: { ot: { a10: @ot.a10, a11: @ot.a11, a12: @ot.a12, a13: @ot.a13, a14: @ot.a14, a15: @ot.a15, a16: @ot.a16, a17: @ot.a17, a18: @ot.a18, a19: @ot.a19, a1: @ot.a1, a20: @ot.a20, a21: @ot.a21, a22: @ot.a22, a23: @ot.a23, a24: @ot.a24, a25: @ot.a25, a26: @ot.a26, a27: @ot.a27, a28: @ot.a28, a29: @ot.a29, a2: @ot.a2, a30: @ot.a30, a31: @ot.a31, a32: @ot.a32, a33: @ot.a33, a34: @ot.a34, a35: @ot.a35, a36: @ot.a36, a37: @ot.a37, a38: @ot.a38, a39: @ot.a39, a3: @ot.a3, a40: @ot.a40, a41: @ot.a41, a42: @ot.a42, a43: @ot.a43, a44: @ot.a44, a45: @ot.a45, a46: @ot.a46, a47: @ot.a47, a48: @ot.a48, a49: @ot.a49, a4: @ot.a4, a50: @ot.a50, a51: @ot.a51, a52: @ot.a52, a53: @ot.a53, a54: @ot.a54, a55: @ot.a55, a56: @ot.a56, a57: @ot.a57, a58: @ot.a58, a59: @ot.a59, a5: @ot.a5, a60: @ot.a60, a61: @ot.a61, a6: @ot.a6, a7: @ot.a7, a8: @ot.a8, a9: @ot.a9 } }
    assert_redirected_to ot_url(@ot)
  end

  test "should destroy ot" do
    assert_difference('Ot.count', -1) do
      delete ot_url(@ot)
    end

    assert_redirected_to ots_url
  end
end
