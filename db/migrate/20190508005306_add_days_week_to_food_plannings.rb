class AddDaysWeekToFoodPlannings < ActiveRecord::Migration[5.2]
  def change
    add_column :food_plannings, :days_week, :text, array: true, default: [false, false, false, false, false, false, false]
  end
end
