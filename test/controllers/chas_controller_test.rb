require 'test_helper'

class ChasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cha = chas(:one)
  end

  test "should get index" do
    get chas_url
    assert_response :success
  end

  test "should get new" do
    get new_cha_url
    assert_response :success
  end

  test "should create cha" do
    assert_difference('Cha.count') do
      post chas_url, params: { cha: { a10: @cha.a10, a11: @cha.a11, a12: @cha.a12, a13: @cha.a13, a14: @cha.a14, a15: @cha.a15, a16: @cha.a16, a17: @cha.a17, a18: @cha.a18, a19: @cha.a19, a1: @cha.a1, a20: @cha.a20, a21: @cha.a21, a22: @cha.a22, a23: @cha.a23, a24: @cha.a24, a25: @cha.a25, a26: @cha.a26, a27: @cha.a27, a2: @cha.a2, a3: @cha.a3, a4: @cha.a4, a5: @cha.a5, a6: @cha.a6, a7: @cha.a7, a8: @cha.a8, a9: @cha.a9 } }
    end

    assert_redirected_to cha_url(Cha.last)
  end

  test "should show cha" do
    get cha_url(@cha)
    assert_response :success
  end

  test "should get edit" do
    get edit_cha_url(@cha)
    assert_response :success
  end

  test "should update cha" do
    patch cha_url(@cha), params: { cha: { a10: @cha.a10, a11: @cha.a11, a12: @cha.a12, a13: @cha.a13, a14: @cha.a14, a15: @cha.a15, a16: @cha.a16, a17: @cha.a17, a18: @cha.a18, a19: @cha.a19, a1: @cha.a1, a20: @cha.a20, a21: @cha.a21, a22: @cha.a22, a23: @cha.a23, a24: @cha.a24, a25: @cha.a25, a26: @cha.a26, a27: @cha.a27, a2: @cha.a2, a3: @cha.a3, a4: @cha.a4, a5: @cha.a5, a6: @cha.a6, a7: @cha.a7, a8: @cha.a8, a9: @cha.a9 } }
    assert_redirected_to cha_url(@cha)
  end

  test "should destroy cha" do
    assert_difference('Cha.count', -1) do
      delete cha_url(@cha)
    end

    assert_redirected_to chas_url
  end
end
