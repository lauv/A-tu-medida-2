Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'works/index'
  get 'home/index'

	resources :categories do
		resources :portfolio, only: [:show]
	end
	resources :designer_applications, only: [:show, :new, :create]
	get 'users/show'
	get 'home/index'
	root to: "home#index"

	devise_for :users, controllers: {
		registrations: 'users/registrations',
		sessions: 'users/sessions',
		passwords: 'users/passwords',
		omniauth_callbacks: "users/omniauth_callbacks"
	}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
