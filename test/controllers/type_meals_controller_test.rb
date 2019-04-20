require 'test_helper'

class TypeMealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_meal = type_meals(:one)
  end

  test "should get index" do
    get type_meals_url
    assert_response :success
  end

  test "should get new" do
    get new_type_meal_url
    assert_response :success
  end

  test "should create type_meal" do
    assert_difference('TypeMeal.count') do
      post type_meals_url, params: { type_meal: { name: @type_meal.name } }
    end

    assert_redirected_to type_meal_url(TypeMeal.last)
  end

  test "should show type_meal" do
    get type_meal_url(@type_meal)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_meal_url(@type_meal)
    assert_response :success
  end

  test "should update type_meal" do
    patch type_meal_url(@type_meal), params: { type_meal: { name: @type_meal.name } }
    assert_redirected_to type_meal_url(@type_meal)
  end

  test "should destroy type_meal" do
    assert_difference('TypeMeal.count', -1) do
      delete type_meal_url(@type_meal)
    end

    assert_redirected_to type_meals_url
  end
end
