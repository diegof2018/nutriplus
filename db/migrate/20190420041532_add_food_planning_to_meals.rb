class AddFoodPlanningToMeals < ActiveRecord::Migration[5.2]
  def change
    add_reference :meals, :food_planning, foreign_key: true
  end
end
