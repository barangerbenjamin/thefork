Rails.application.routes.draw do
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  get 'restaurants', to: 'restaurants#index', as: :restaurants
  post 'restaurants', to: 'restaurants#create'

  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  root to: 'pages#home'
# VERB 'PATH', to: 'CONTROLLER#METHOD'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
