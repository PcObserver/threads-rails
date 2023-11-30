Rails.application.routes.draw do
  devise_for :users

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  root 'posts#index'

  resources :posts do
    resources :comments
  end

  resources :users, only: %i[show edit update]
  resources :user_knowledge_domains do
    member do
      patch 'increase_stars'
    end
  end
end
