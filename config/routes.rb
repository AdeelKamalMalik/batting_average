Rails.application.routes.draw do
  resources :battings
  root to: 'home#index'
  post '/upload_files', to: 'home#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
