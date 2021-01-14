require 'test_helper'

class PastriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pastry = pastries(:one)
  end

  test "should get index" do
    get pastries_url, as: :json
    assert_response :success
  end

  test "should create pastry" do
    assert_difference('Pastry.count') do
      post pastries_url, params: { pastry: { color: @pastry.color, price: @pastry.price, size: @pastry.size, theme: @pastry.theme, type: @pastry.type } }, as: :json
    end

    assert_response 201
  end

  test "should show pastry" do
    get pastry_url(@pastry), as: :json
    assert_response :success
  end

  test "should update pastry" do
    patch pastry_url(@pastry), params: { pastry: { color: @pastry.color, price: @pastry.price, size: @pastry.size, theme: @pastry.theme, type: @pastry.type } }, as: :json
    assert_response 200
  end

  test "should destroy pastry" do
    assert_difference('Pastry.count', -1) do
      delete pastry_url(@pastry), as: :json
    end

    assert_response 204
  end
end
