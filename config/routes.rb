Rails.application.routes.draw do
  get 'users/profile'
  devise_for :user, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'

  resources :posts
    get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
