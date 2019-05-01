class AddFieldsToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :umidade, :float
    add_column :foods, :energia_kc, :integer
    add_column :foods, :energia_kj, :integer
    add_column :foods, :proteina, :float
    add_column :foods, :lipideos, :float
    add_column :foods, :colesterol, :integer
    add_column :foods, :idrato, :float
    add_column :foods, :alimentar, :float
    add_column :foods, :cinzas, :float
    add_column :foods, :calcio, :float
    add_column :foods, :magnesio, :float
    add_column :foods, :manganes, :float
    add_column :foods, :fosforo, :float
    add_column :foods, :ferro, :float
    add_column :foods, :sodio, :integer
    add_column :foods, :potassio, :integer
    add_column :foods, :cobre, :float
    add_column :foods, :zinco, :float
    add_column :foods, :retinol, :integer
    add_column :foods, :re, :integer
    add_column :foods, :rae, :integer
    add_column :foods, :tiamina, :float
    add_column :foods, :riboflavina, :float
    add_column :foods, :piridoxina, :float
    add_column :foods, :niacina, :float
    add_column :foods, :vitamina_c, :float
  end
end
