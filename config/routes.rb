# config/routes.rb
Rails.application.routes.draw do
  root "photos#index"
  resources :photos, only: [ :index, :new, :create, :destroy ]
end
