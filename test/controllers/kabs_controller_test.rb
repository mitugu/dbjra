require 'test_helper'

class KabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kab = kabs(:one)
  end

  test "should get index" do
    get kabs_url
    assert_response :success
  end

  test "should get new" do
    get new_kab_url
    assert_response :success
  end

  test "should create kab" do
    assert_difference('Kab.count') do
      post kabs_url, params: { kab: { a10: @kab.a10, a11: @kab.a11, a12: @kab.a12, a13: @kab.a13, a14: @kab.a14, a15: @kab.a15, a16: @kab.a16, a17: @kab.a17, a18: @kab.a18, a19: @kab.a19, a1: @kab.a1, a20: @kab.a20, a21: @kab.a21, a22: @kab.a22, a23: @kab.a23, a24: @kab.a24, a25: @kab.a25, a26: @kab.a26, a27: @kab.a27, a28: @kab.a28, a29: @kab.a29, a2: @kab.a2, a30: @kab.a30, a31: @kab.a31, a32: @kab.a32, a33: @kab.a33, a3: @kab.a3, a4: @kab.a4, a5: @kab.a5, a6: @kab.a6, a7: @kab.a7, a8: @kab.a8, a9: @kab.a9 } }
    end

    assert_redirected_to kab_url(Kab.last)
  end

  test "should show kab" do
    get kab_url(@kab)
    assert_response :success
  end

  test "should get edit" do
    get edit_kab_url(@kab)
    assert_response :success
  end

  test "should update kab" do
    patch kab_url(@kab), params: { kab: { a10: @kab.a10, a11: @kab.a11, a12: @kab.a12, a13: @kab.a13, a14: @kab.a14, a15: @kab.a15, a16: @kab.a16, a17: @kab.a17, a18: @kab.a18, a19: @kab.a19, a1: @kab.a1, a20: @kab.a20, a21: @kab.a21, a22: @kab.a22, a23: @kab.a23, a24: @kab.a24, a25: @kab.a25, a26: @kab.a26, a27: @kab.a27, a28: @kab.a28, a29: @kab.a29, a2: @kab.a2, a30: @kab.a30, a31: @kab.a31, a32: @kab.a32, a33: @kab.a33, a3: @kab.a3, a4: @kab.a4, a5: @kab.a5, a6: @kab.a6, a7: @kab.a7, a8: @kab.a8, a9: @kab.a9 } }
    assert_redirected_to kab_url(@kab)
  end

  test "should destroy kab" do
    assert_difference('Kab.count', -1) do
      delete kab_url(@kab)
    end

    assert_redirected_to kabs_url
  end
end
