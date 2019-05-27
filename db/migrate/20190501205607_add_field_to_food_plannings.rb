class AddFieldToFoodPlannings < ActiveRecord::Migration[5.2]
  def change
    add_column :food_plannings, :description, :string
    add_column :food_plannings, :status, :integer
  end
end
