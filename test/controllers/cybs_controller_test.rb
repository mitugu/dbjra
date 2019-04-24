require 'test_helper'

class CybsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cyb = cybs(:one)
  end

  test "should get index" do
    get cybs_url
    assert_response :success
  end

  test "should get new" do
    get new_cyb_url
    assert_response :success
  end

  test "should create cyb" do
    assert_difference('Cyb.count') do
      post cybs_url, params: { cyb: { a10: @cyb.a10, a11: @cyb.a11, a12: @cyb.a12, a13: @cyb.a13, a14: @cyb.a14, a15: @cyb.a15, a16: @cyb.a16, a17: @cyb.a17, a18: @cyb.a18, a19: @cyb.a19, a1: @cyb.a1, a20: @cyb.a20, a21: @cyb.a21, a22: @cyb.a22, a23: @cyb.a23, a24: @cyb.a24, a25: @cyb.a25, a26: @cyb.a26, a2: @cyb.a2, a3: @cyb.a3, a4: @cyb.a4, a5: @cyb.a5, a6: @cyb.a6, a7: @cyb.a7, a8: @cyb.a8, a9: @cyb.a9 } }
    end

    assert_redirected_to cyb_url(Cyb.last)
  end

  test "should show cyb" do
    get cyb_url(@cyb)
    assert_response :success
  end

  test "should get edit" do
    get edit_cyb_url(@cyb)
    assert_response :success
  end

  test "should update cyb" do
    patch cyb_url(@cyb), params: { cyb: { a10: @cyb.a10, a11: @cyb.a11, a12: @cyb.a12, a13: @cyb.a13, a14: @cyb.a14, a15: @cyb.a15, a16: @cyb.a16, a17: @cyb.a17, a18: @cyb.a18, a19: @cyb.a19, a1: @cyb.a1, a20: @cyb.a20, a21: @cyb.a21, a22: @cyb.a22, a23: @cyb.a23, a24: @cyb.a24, a25: @cyb.a25, a26: @cyb.a26, a2: @cyb.a2, a3: @cyb.a3, a4: @cyb.a4, a5: @cyb.a5, a6: @cyb.a6, a7: @cyb.a7, a8: @cyb.a8, a9: @cyb.a9 } }
    assert_redirected_to cyb_url(@cyb)
  end

  test "should destroy cyb" do
    assert_difference('Cyb.count', -1) do
      delete cyb_url(@cyb)
    end

    assert_redirected_to cybs_url
  end
end
