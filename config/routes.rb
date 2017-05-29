Rails.application.routes.draw do
  get 'follows/index'

  get 'home/index'
  root 'users#index'
  devise_for :users, controllers: {}
  resources :users, only: [:index, :show] do
		resources :follows, only: [:create, :destroy]
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
