class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.belongs_to :type_meal, foreign_key: true
      t.json :values

      t.timestamps
    end
  end
end
