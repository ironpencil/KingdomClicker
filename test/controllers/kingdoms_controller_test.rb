require 'test_helper'

class KingdomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kingdom = kingdoms(:one)
  end

  test "should get index" do
    get kingdoms_url
    assert_response :success
  end

  test "should get new" do
    get new_kingdom_url
    assert_response :success
  end

  test "should create kingdom" do
    assert_difference('Kingdom.count') do
      post kingdoms_url, params: { kingdom: { description: @kingdom.description, gold: @kingdom.gold, name: @kingdom.name } }
    end

    assert_redirected_to kingdom_url(Kingdom.last)
  end

  test "should show kingdom" do
    get kingdom_url(@kingdom)
    assert_response :success
  end

  test "should get edit" do
    get edit_kingdom_url(@kingdom)
    assert_response :success
  end

  test "should update kingdom" do
    patch kingdom_url(@kingdom), params: { kingdom: { description: @kingdom.description, gold: @kingdom.gold, name: @kingdom.name } }
    assert_redirected_to kingdom_url(@kingdom)
  end

  test "should destroy kingdom" do
    assert_difference('Kingdom.count', -1) do
      delete kingdom_url(@kingdom)
    end

    assert_redirected_to kingdoms_url
  end
end
