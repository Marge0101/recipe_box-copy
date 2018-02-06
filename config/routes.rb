Rails.application.routes.draw do
  root to: 'recipes#index'
  resources :recipes
  
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'recipes/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
