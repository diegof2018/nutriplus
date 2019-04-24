module FoodsHelper

	def select_foods
	    select_tag("foods", options_from_collection_for_select(Food.all, :id, :name),
	    # onchange: "filtrar_postos_por_proprietarios()",
	    prompt: "Escolha o Alimento",
	    # "data-live-search" =>"true",
    	class: "form-control")
  	end

end
