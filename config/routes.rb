# config/routes.rb
Rails.application.routes.draw do
  root "photos#index"
  resources :photos, only: [ :index, :new, :create ]
  get "/.well-known/appspecific/com.chrome.devtools.json", to: proc { [ 404, {}, [ "" ] ] }
end
