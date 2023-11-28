Rails.application.routes.draw do
  get 'user_knowledge_domains/update'
  devise_for :users

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  # Defines the root path route ("/")
  root 'posts#index'

  resources :comments
  resources :posts
  resources :users, only: %i[show edit update]
  resources :user_knowledge_domains do
    member do
      patch 'increase_stars'
    end
  end
end
