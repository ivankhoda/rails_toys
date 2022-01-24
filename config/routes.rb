Rails.application.routes.draw do
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'product#index'
  # Defines the root path route ("/")
  # root "articles#index"
  post '/product', to: 'product#create'
  get '/product', to: 'product#index'
  get '/product/:id', to: 'product#show'
  put '/product/:id', to: 'product#update'
  delete '/product/:id', to: 'product#destroy'
  # Orders route
  post '/order', to: 'order#create'
  get '/order', to: 'order#index'
  get '/order/:id', to: 'order#show'
  put '/order/:id', to: 'order#update'
  delete '/order/:id', to: 'order#destroy'
end
