Rails.application.routes.draw do
  get 'home/index'
  root 'users#index'
  devise_for :users
  resource :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
