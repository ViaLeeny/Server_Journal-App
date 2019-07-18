Rails.application.routes.draw do
  resources :posts
  resources :locations
  resources :moods
  resources :users, only: [:index, :show]

  post "/signin", to: "users#signin"
  post "/signup", to: "users#signup"
  get "/validate", to: "users#validate"
  get "/posts", to: "users#posts"

end
