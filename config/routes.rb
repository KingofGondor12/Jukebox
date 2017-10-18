Rails.application.routes.draw do
<<<<<<< HEAD
  get 'subscriber/create'
=======
  get 'subscribers/create'
>>>>>>> a2e714be8810e0227a90739c0956acf0678dfe37

  root 'pages#home'

  get 'pages/monkey'

  post 'pages/monkey'

  resources :subscribers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
