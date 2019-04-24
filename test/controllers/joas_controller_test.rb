require 'test_helper'

class JoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joa = joas(:one)
  end

  test "should get index" do
    get joas_url
    assert_response :success
  end

  test "should get new" do
    get new_joa_url
    assert_response :success
  end

  test "should create joa" do
    assert_difference('Joa.count') do
      post joas_url, params: { joa: { a10: @joa.a10, a11: @joa.a11, a12: @joa.a12, a13: @joa.a13, a14: @joa.a14, a15: @joa.a15, a16: @joa.a16, a17: @joa.a17, a18: @joa.a18, a19: @joa.a19, a1: @joa.a1, a20: @joa.a20, a21: @joa.a21, a22: @joa.a22, a23: @joa.a23, a24: @joa.a24, a25: @joa.a25, a2: @joa.a2, a3: @joa.a3, a4: @joa.a4, a5: @joa.a5, a6: @joa.a6, a7: @joa.a7, a8: @joa.a8, a9: @joa.a9 } }
    end

    assert_redirected_to joa_url(Joa.last)
  end

  test "should show joa" do
    get joa_url(@joa)
    assert_response :success
  end

  test "should get edit" do
    get edit_joa_url(@joa)
    assert_response :success
  end

  test "should update joa" do
    patch joa_url(@joa), params: { joa: { a10: @joa.a10, a11: @joa.a11, a12: @joa.a12, a13: @joa.a13, a14: @joa.a14, a15: @joa.a15, a16: @joa.a16, a17: @joa.a17, a18: @joa.a18, a19: @joa.a19, a1: @joa.a1, a20: @joa.a20, a21: @joa.a21, a22: @joa.a22, a23: @joa.a23, a24: @joa.a24, a25: @joa.a25, a2: @joa.a2, a3: @joa.a3, a4: @joa.a4, a5: @joa.a5, a6: @joa.a6, a7: @joa.a7, a8: @joa.a8, a9: @joa.a9 } }
    assert_redirected_to joa_url(@joa)
  end

  test "should destroy joa" do
    assert_difference('Joa.count', -1) do
      delete joa_url(@joa)
    end

    assert_redirected_to joas_url
  end
end
