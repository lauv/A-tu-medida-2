Rails.application.routes.draw do
  resources :designer_applications
  resources :memberships
  devise_for :users
  devise_for :installs
  resources :categories
  root to: "categories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
