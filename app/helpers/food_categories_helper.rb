module FoodCategoriesHelper
	def select_food_categories
	    select("food","food_category_id", options_from_collection_for_select(FoodCategory.all, :id, :name),
	    {:prompt => 'Selecione a Categoria do Alimento'},{ :class => "form-control"}
	    )
  	end
end

