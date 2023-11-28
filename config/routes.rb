Rails.application.routes.draw do
  devise_for :users

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  # Defines the root path route ("/")
  root "posts#index"

  resources :comments
  resources :posts
  resources :users, only: %i[show edit update]
end
