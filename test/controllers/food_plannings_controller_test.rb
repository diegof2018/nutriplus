require 'test_helper'

class FoodPlanningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_planning = food_plannings(:one)
  end

  test "should get index" do
    get food_plannings_url
    assert_response :success
  end

  test "should get new" do
    get new_food_planning_url
    assert_response :success
  end

  test "should create food_planning" do
    assert_difference('FoodPlanning.count') do
      post food_plannings_url, params: { food_planning: { date_finish: @food_planning.date_finish, date_start: @food_planning.date_start, patient_id: @food_planning.patient_id } }
    end

    assert_redirected_to food_planning_url(FoodPlanning.last)
  end

  test "should show food_planning" do
    get food_planning_url(@food_planning)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_planning_url(@food_planning)
    assert_response :success
  end

  test "should update food_planning" do
    patch food_planning_url(@food_planning), params: { food_planning: { date_finish: @food_planning.date_finish, date_start: @food_planning.date_start, patient_id: @food_planning.patient_id } }
    assert_redirected_to food_planning_url(@food_planning)
  end

  test "should destroy food_planning" do
    assert_difference('FoodPlanning.count', -1) do
      delete food_planning_url(@food_planning)
    end

    assert_redirected_to food_plannings_url
  end
end
