Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :edit, :update, :create]
  resources :listings
  get '/listings/favourite', to: 'listings#favourite'
  get '/listings/relevant', to: 'listings#relevant'
end
