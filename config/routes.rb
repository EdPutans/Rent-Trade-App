Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :edit, :update, :create]
  resources :listings
  get 'relevant', to: 'listings#relevant'
  get 'favourites', to: 'listings#favourites'
  # '
  # get 'listings/favourites', :to => 'listings#favourites'
end
