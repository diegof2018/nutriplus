Rails.application.routes.draw do
  resources :meals
  resources :type_meals
  resources :food_plannings
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
