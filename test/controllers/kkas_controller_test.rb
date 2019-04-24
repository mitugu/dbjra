require 'test_helper'

class KkasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kka = kkas(:one)
  end

  test "should get index" do
    get kkas_url
    assert_response :success
  end

  test "should get new" do
    get new_kka_url
    assert_response :success
  end

  test "should create kka" do
    assert_difference('Kka.count') do
      post kkas_url, params: { kka: { a10: @kka.a10, a11: @kka.a11, a12: @kka.a12, a13: @kka.a13, a14: @kka.a14, a15: @kka.a15, a16: @kka.a16, a17: @kka.a17, a18: @kka.a18, a19: @kka.a19, a1: @kka.a1, a20: @kka.a20, a21: @kka.a21, a22: @kka.a22, a23: @kka.a23, a24: @kka.a24, a25: @kka.a25, a26: @kka.a26, a27: @kka.a27, a28: @kka.a28, a29: @kka.a29, a2: @kka.a2, a30: @kka.a30, a31: @kka.a31, a32: @kka.a32, a33: @kka.a33, a34: @kka.a34, a35: @kka.a35, a36: @kka.a36, a37: @kka.a37, a3: @kka.a3, a4: @kka.a4, a5: @kka.a5, a6: @kka.a6, a7: @kka.a7, a8: @kka.a8, a9: @kka.a9 } }
    end

    assert_redirected_to kka_url(Kka.last)
  end

  test "should show kka" do
    get kka_url(@kka)
    assert_response :success
  end

  test "should get edit" do
    get edit_kka_url(@kka)
    assert_response :success
  end

  test "should update kka" do
    patch kka_url(@kka), params: { kka: { a10: @kka.a10, a11: @kka.a11, a12: @kka.a12, a13: @kka.a13, a14: @kka.a14, a15: @kka.a15, a16: @kka.a16, a17: @kka.a17, a18: @kka.a18, a19: @kka.a19, a1: @kka.a1, a20: @kka.a20, a21: @kka.a21, a22: @kka.a22, a23: @kka.a23, a24: @kka.a24, a25: @kka.a25, a26: @kka.a26, a27: @kka.a27, a28: @kka.a28, a29: @kka.a29, a2: @kka.a2, a30: @kka.a30, a31: @kka.a31, a32: @kka.a32, a33: @kka.a33, a34: @kka.a34, a35: @kka.a35, a36: @kka.a36, a37: @kka.a37, a3: @kka.a3, a4: @kka.a4, a5: @kka.a5, a6: @kka.a6, a7: @kka.a7, a8: @kka.a8, a9: @kka.a9 } }
    assert_redirected_to kka_url(@kka)
  end

  test "should destroy kka" do
    assert_difference('Kka.count', -1) do
      delete kka_url(@kka)
    end

    assert_redirected_to kkas_url
  end
end
