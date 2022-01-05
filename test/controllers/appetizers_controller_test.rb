require "test_helper"

class AppetizersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appetizer = appetizers(:one)
  end

  test "should get index" do
    get appetizers_url, as: :json
    assert_response :success
  end

  test "should create appetizer" do
    assert_difference('Appetizer.count') do
      post appetizers_url, params: { appetizer: { description: @appetizer.description, df: @appetizer.df, gf: @appetizer.gf, name: @appetizer.name, price: @appetizer.price, vegan: @appetizer.vegan, vegetarian: @appetizer.vegetarian } }, as: :json
    end

    assert_response 201
  end

  test "should show appetizer" do
    get appetizer_url(@appetizer), as: :json
    assert_response :success
  end

  test "should update appetizer" do
    patch appetizer_url(@appetizer), params: { appetizer: { description: @appetizer.description, df: @appetizer.df, gf: @appetizer.gf, name: @appetizer.name, price: @appetizer.price, vegan: @appetizer.vegan, vegetarian: @appetizer.vegetarian } }, as: :json
    assert_response 200
  end

  test "should destroy appetizer" do
    assert_difference('Appetizer.count', -1) do
      delete appetizer_url(@appetizer), as: :json
    end

    assert_response 204
  end
end
