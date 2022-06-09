Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tasks do
    resources :comments, only: %i[new create edit]
  end
  resources :networks, only: %i[index show]
  get "statistics", to: "pages#statistics", as: "statistics"
end
