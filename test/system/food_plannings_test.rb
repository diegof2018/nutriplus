require "application_system_test_case"

class FoodPlanningsTest < ApplicationSystemTestCase
  setup do
    @food_planning = food_plannings(:one)
  end

  test "visiting the index" do
    visit food_plannings_url
    assert_selector "h1", text: "Food Plannings"
  end

  test "creating a Food planning" do
    visit food_plannings_url
    click_on "New Food Planning"

    fill_in "Date finish", with: @food_planning.date_finish
    fill_in "Date start", with: @food_planning.date_start
    fill_in "Patient", with: @food_planning.patient_id
    click_on "Create Food planning"

    assert_text "Food planning was successfully created"
    click_on "Back"
  end

  test "updating a Food planning" do
    visit food_plannings_url
    click_on "Edit", match: :first

    fill_in "Date finish", with: @food_planning.date_finish
    fill_in "Date start", with: @food_planning.date_start
    fill_in "Patient", with: @food_planning.patient_id
    click_on "Update Food planning"

    assert_text "Food planning was successfully updated"
    click_on "Back"
  end

  test "destroying a Food planning" do
    visit food_plannings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Food planning was successfully destroyed"
  end
end
