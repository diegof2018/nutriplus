class ChangeColumnFoods < ActiveRecord::Migration[5.2]
  def change
  	rename_column :foods, :idrato, :carboidrato
  	rename_column :foods, :alimentar, :fibra_alimentar
  end
end
