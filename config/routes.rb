Rails.application.routes.draw do
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
		sessions: 'users/sessions'
	}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
