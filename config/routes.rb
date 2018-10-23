Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  resources :users, only: [:index, :show, :edit, :update, :create, :destroy]
  resources :listings
  get 'relevant', to: 'listings#relevant'
  get 'favourites', to: 'listings#favourites'
  post 'favourites', to: 'listings#add_to_favourites'
  delete 'favourites/', to: 'listings#remove_favourite'
  # '
  # get 'listings/favourites', :to => 'listings#favourites'
end
