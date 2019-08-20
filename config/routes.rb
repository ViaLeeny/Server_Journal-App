Rails.application.routes.draw do

  # root 'posts#index'

  resources :posts
  resources :locations
  resources :users, only: [:index, :show]

  post "/signin", to: "users#signin"
  post "/signup", to: "users#signup"
  get "/validate", to: "users#validate"
  get "/user_posts", to: "users#user_posts"
  get "/locations", to: "users#locations"

end
