Rails.application.routes.draw do
  resources :models, only: [:index, :show, :create]
  resources :makes, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
