Rails.application.routes.draw do
  get 'recipes/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'recipes#index'
  resources :recipes
end
