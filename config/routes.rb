Rails.application.routes.draw do
  resources :products
  resources :films
  resources :movies


  root 'search#index'
  get '/product', to: 'search#product'
  get :search, controller: :search
  get :autocomplete, controller: :search
  get '/countries', to: 'search#countries'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
