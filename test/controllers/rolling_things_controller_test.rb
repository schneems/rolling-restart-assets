require 'test_helper'

class RollingThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rolling_thing = rolling_things(:one)
  end

  test "should get index" do
    get rolling_things_url
    assert_response :success
  end

  test "should get new" do
    get new_rolling_thing_url
    assert_response :success
  end

  test "should create rolling_thing" do
    assert_difference('RollingThing.count') do
      post rolling_things_url, params: { rolling_thing: { name: @rolling_thing.name, speed: @rolling_thing.speed } }
    end

    assert_redirected_to rolling_thing_url(RollingThing.last)
  end

  test "should show rolling_thing" do
    get rolling_thing_url(@rolling_thing)
    assert_response :success
  end

  test "should get edit" do
    get edit_rolling_thing_url(@rolling_thing)
    assert_response :success
  end

  test "should update rolling_thing" do
    patch rolling_thing_url(@rolling_thing), params: { rolling_thing: { name: @rolling_thing.name, speed: @rolling_thing.speed } }
    assert_redirected_to rolling_thing_url(@rolling_thing)
  end

  test "should destroy rolling_thing" do
    assert_difference('RollingThing.count', -1) do
      delete rolling_thing_url(@rolling_thing)
    end

    assert_redirected_to rolling_things_url
  end
end
