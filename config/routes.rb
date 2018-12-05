Rails.application.routes.draw do
  get 'places/index'
  get 'places/new'
  get 'places/create'
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
