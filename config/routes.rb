Rails.application.routes.draw do
 root :to => 'accommodations#index'

 resources :owners, :accommodations
end
