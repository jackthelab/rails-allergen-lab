Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :ingredients, only: [:index, :show, :new, :create]
  resources :recipes, only: [:index, :show, :new, :create]
  resources :users, only: [:index, :show, :new, :create, :destroy]
end
