Rails.application.routes.draw do
  devise_for :users

  root 'users#index'

  resources :users, only: [:index, :show, :edit, :update, :create, :destroy]
  resources :pictures, only: [:create, :show]
  resources :listings

  get 'relevant', to: 'listings#relevant'
  get 'favourites', to: 'listings#favourites'

  post 'favourites', to: 'listings#add_to_favourites'
  delete 'favourites/', to: 'listings#remove_favourite'

  get 'about', to: 'listings#about'

  get 'postcodes', to: 'listings#postcodes'
  post 'edit_postcodes', to: 'listings#edit_postcodes'

  get 'my_listings', to: 'listings#my_listings'

  get 'new_picture/:id', to: 'listings#new_pic'
  post 'create_picture/:id', to:'listings#create_pic'

end
