Rails.application.routes.draw do
  get 'subscribers/create'

  root 'pages#home'

  get 'pages/monkey'

  post 'pages/monkey'

  resources :subscribers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
