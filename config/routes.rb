Rails.application.routes.draw do
  # resources :search
  resources :product

  # post '/', to: "product#producti"
  root 'product#index'
  # get '/product', to: 'product#product'
  get '/search', to: 'product#producti'
  get '/producti', to: 'product#producti'
  get :autocomplete, controller: :product
  get '/countries', to: 'product#countries'
  get '/chose', to: 'product#chose'
  get 'no', to: 'product#no'
  get '/objet', to: 'product#objet'
  get '/mention', to: 'product#mention'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
