require 'test_helper'

class JrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jra = jras(:one)
  end

  test "should get index" do
    get jras_url
    assert_response :success
  end

  test "should get new" do
    get new_jra_url
    assert_response :success
  end

  test "should create jra" do
    assert_difference('Jra.count') do
      post jras_url, params: { jra: { baba: @jra.baba, class: @jra.class, code: @jra.code, condition: @jra.condition, day: @jra.day, distance: @jra.distance, grade: @jra.grade, race: @jra.race, race_condraceition: @jra.race_condraceition, race_day: @jra.race_day, race_time: @jra.race_time, the_time: @jra.the_time, track: @jra.track, turn: @jra.turn, weight: @jra.weight, year: @jra.year } }
    end

    assert_redirected_to jra_url(Jra.last)
  end

  test "should show jra" do
    get jra_url(@jra)
    assert_response :success
  end

  test "should get edit" do
    get edit_jra_url(@jra)
    assert_response :success
  end

  test "should update jra" do
    patch jra_url(@jra), params: { jra: { baba: @jra.baba, class: @jra.class, code: @jra.code, condition: @jra.condition, day: @jra.day, distance: @jra.distance, grade: @jra.grade, race: @jra.race, race_condraceition: @jra.race_condraceition, race_day: @jra.race_day, race_time: @jra.race_time, the_time: @jra.the_time, track: @jra.track, turn: @jra.turn, weight: @jra.weight, year: @jra.year } }
    assert_redirected_to jra_url(@jra)
  end

  test "should destroy jra" do
    assert_difference('Jra.count', -1) do
      delete jra_url(@jra)
    end

    assert_redirected_to jras_url
  end
end
