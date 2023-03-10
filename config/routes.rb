Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  resources :restaurants

  get '/display' => 'restaurants#display'
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/my_page' => 'users#my_page'
  
  post '/generate_code', to: 'coupon_codes#generate_code', as: 'generate_code'

end
