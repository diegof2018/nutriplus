class CreateFoodPlannings < ActiveRecord::Migration[5.2]
  def change
    create_table :food_plannings do |t|
      t.belongs_to :patient, foreign_key: true
      t.datetime :date_start
      t.datetime :date_finish

      t.timestamps
    end
  end
end
