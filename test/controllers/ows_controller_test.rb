require 'test_helper'

class OwsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ow = ows(:one)
  end

  test "should get index" do
    get ows_url
    assert_response :success
  end

  test "should get new" do
    get new_ow_url
    assert_response :success
  end

  test "should create ow" do
    assert_difference('Ow.count') do
      post ows_url, params: { ow: { a1: @ow.a1, a2: @ow.a2, a3: @ow.a3, a4: @ow.a4, a5: @ow.a5, a6: @ow.a6, a7: @ow.a7, a8: @ow.a8, a9: @ow.a9 } }
    end

    assert_redirected_to ow_url(Ow.last)
  end

  test "should show ow" do
    get ow_url(@ow)
    assert_response :success
  end

  test "should get edit" do
    get edit_ow_url(@ow)
    assert_response :success
  end

  test "should update ow" do
    patch ow_url(@ow), params: { ow: { a1: @ow.a1, a2: @ow.a2, a3: @ow.a3, a4: @ow.a4, a5: @ow.a5, a6: @ow.a6, a7: @ow.a7, a8: @ow.a8, a9: @ow.a9 } }
    assert_redirected_to ow_url(@ow)
  end

  test "should destroy ow" do
    assert_difference('Ow.count', -1) do
      delete ow_url(@ow)
    end

    assert_redirected_to ows_url
  end
end
