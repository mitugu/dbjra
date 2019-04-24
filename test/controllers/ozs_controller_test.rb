require 'test_helper'

class OzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oz = ozs(:one)
  end

  test "should get index" do
    get ozs_url
    assert_response :success
  end

  test "should get new" do
    get new_oz_url
    assert_response :success
  end

  test "should create oz" do
    assert_difference('Oz.count') do
      post ozs_url, params: { oz: { a10: @oz.a10, a1: @oz.a1, a2: @oz.a2, a3: @oz.a3, a4: @oz.a4, a5: @oz.a5, a6: @oz.a6, a7: @oz.a7, a8: @oz.a8, a9: @oz.a9 } }
    end

    assert_redirected_to oz_url(Oz.last)
  end

  test "should show oz" do
    get oz_url(@oz)
    assert_response :success
  end

  test "should get edit" do
    get edit_oz_url(@oz)
    assert_response :success
  end

  test "should update oz" do
    patch oz_url(@oz), params: { oz: { a10: @oz.a10, a1: @oz.a1, a2: @oz.a2, a3: @oz.a3, a4: @oz.a4, a5: @oz.a5, a6: @oz.a6, a7: @oz.a7, a8: @oz.a8, a9: @oz.a9 } }
    assert_redirected_to oz_url(@oz)
  end

  test "should destroy oz" do
    assert_difference('Oz.count', -1) do
      delete oz_url(@oz)
    end

    assert_redirected_to ozs_url
  end
end
