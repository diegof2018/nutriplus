module TypeMealsHelper
	def select_type_meals
	    select_tag("meal[type_meal_id]", options_from_collection_for_select(TypeMeal.where(nil), :id, :name),
	    # onchange: "filtrar_postos_por_proprietarios()",
	    prompt: "Escolha o Tipo de Refeição",
	    # "data-live-search" =>"true",
    	class: "form-control")
  	end
end
