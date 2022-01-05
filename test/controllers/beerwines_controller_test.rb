require "test_helper"

class BeerwinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beerwine = beerwines(:one)
  end

  test "should get index" do
    get beerwines_url, as: :json
    assert_response :success
  end

  test "should create beerwine" do
    assert_difference('Beerwine.count') do
      post beerwines_url, params: { beerwine: { beer: @beerwine.beer, draft: @beerwine.draft, name: @beerwine.name, red: @beerwine.red } }, as: :json
    end

    assert_response 201
  end

  test "should show beerwine" do
    get beerwine_url(@beerwine), as: :json
    assert_response :success
  end

  test "should update beerwine" do
    patch beerwine_url(@beerwine), params: { beerwine: { beer: @beerwine.beer, draft: @beerwine.draft, name: @beerwine.name, red: @beerwine.red } }, as: :json
    assert_response 200
  end

  test "should destroy beerwine" do
    assert_difference('Beerwine.count', -1) do
      delete beerwine_url(@beerwine), as: :json
    end

    assert_response 204
  end
end
