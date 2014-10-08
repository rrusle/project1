Rails.application.routes.draw do
 root :to => 'pages#index'

 resources :owners, :accommodations

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
