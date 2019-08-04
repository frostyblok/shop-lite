Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :instruments
  resources :charges, only: %i[new create index]
  devise_for :users, controllers: {registrations: 'registrations'}
  get 'stores/index'
	root to: 'instruments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
