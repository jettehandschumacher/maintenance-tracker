Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tasks do
    get :completed, on: :member
    resources :comments, except: :index
  end
  resources :networks, only: %i[index show]
  get "statistics", to: "pages#statistics", as: "statistics"
  get "presentation", to: "pages#presentation", as: "presentation"

  resources :services, only: [] do
    resources :equipments, only: :index
  end
end
