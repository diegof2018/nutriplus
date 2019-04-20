require "application_system_test_case"

class TypeMealsTest < ApplicationSystemTestCase
  setup do
    @type_meal = type_meals(:one)
  end

  test "visiting the index" do
    visit type_meals_url
    assert_selector "h1", text: "Type Meals"
  end

  test "creating a Type meal" do
    visit type_meals_url
    click_on "New Type Meal"

    fill_in "Name", with: @type_meal.name
    click_on "Create Type meal"

    assert_text "Type meal was successfully created"
    click_on "Back"
  end

  test "updating a Type meal" do
    visit type_meals_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_meal.name
    click_on "Update Type meal"

    assert_text "Type meal was successfully updated"
    click_on "Back"
  end

  test "destroying a Type meal" do
    visit type_meals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type meal was successfully destroyed"
  end
end
