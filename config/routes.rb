Rails.application.routes.draw do
  devise_for :users

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  # Defines the root path route ("/")
  root 'posts#index'

  resources :posts do
    resources :comments
  end

  resources :users, only: %i[show]
  resources :user_knowledge_domains do
    member do
      patch 'increase_stars'
    end
  end
end
