require "test_helper"

class EntreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entree = entrees(:one)
  end

  test "should get index" do
    get entrees_url, as: :json
    assert_response :success
  end

  test "should create entree" do
    assert_difference('Entree.count') do
      post entrees_url, params: { entree: { description: @entree.description, df: @entree.df, gf: @entree.gf, name: @entree.name, price: @entree.price, vegan: @entree.vegan, vegetarian: @entree.vegetarian } }, as: :json
    end

    assert_response 201
  end

  test "should show entree" do
    get entree_url(@entree), as: :json
    assert_response :success
  end

  test "should update entree" do
    patch entree_url(@entree), params: { entree: { description: @entree.description, df: @entree.df, gf: @entree.gf, name: @entree.name, price: @entree.price, vegan: @entree.vegan, vegetarian: @entree.vegetarian } }, as: :json
    assert_response 200
  end

  test "should destroy entree" do
    assert_difference('Entree.count', -1) do
      delete entree_url(@entree), as: :json
    end

    assert_response 204
  end
end
