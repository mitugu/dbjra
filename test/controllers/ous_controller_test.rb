require 'test_helper'

class OusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ou = ous(:one)
  end

  test "should get index" do
    get ous_url
    assert_response :success
  end

  test "should get new" do
    get new_ou_url
    assert_response :success
  end

  test "should create ou" do
    assert_difference('Ou.count') do
      post ous_url, params: { ou: { a1: @ou.a1, a2: @ou.a2, a3: @ou.a3, a4: @ou.a4, a5: @ou.a5, a6: @ou.a6, a7: @ou.a7, a8: @ou.a8, a9: @ou.a9 } }
    end

    assert_redirected_to ou_url(Ou.last)
  end

  test "should show ou" do
    get ou_url(@ou)
    assert_response :success
  end

  test "should get edit" do
    get edit_ou_url(@ou)
    assert_response :success
  end

  test "should update ou" do
    patch ou_url(@ou), params: { ou: { a1: @ou.a1, a2: @ou.a2, a3: @ou.a3, a4: @ou.a4, a5: @ou.a5, a6: @ou.a6, a7: @ou.a7, a8: @ou.a8, a9: @ou.a9 } }
    assert_redirected_to ou_url(@ou)
  end

  test "should destroy ou" do
    assert_difference('Ou.count', -1) do
      delete ou_url(@ou)
    end

    assert_redirected_to ous_url
  end
end
