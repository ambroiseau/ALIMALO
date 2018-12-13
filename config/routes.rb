Rails.application.routes.draw do
  devise_for :users, controllers: {session: 'session', registration: 'registration'}
  get 'places/index'
  get 'places/new'
  get 'places/create'
  get 'home/index'
  get 'home/confidential'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
	resources :shop do
  	resources :operating_hours
	end
end
