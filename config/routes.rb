Rails.application.routes.draw do
  devise_for :users
  root "myforms#index"
 
  resources :myforms
end
