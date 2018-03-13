Rails.application.routes.draw do
  resources :artists, only: [:new, :create, :show, :edit, :update]
  resources :genres
  resources :songs
end
