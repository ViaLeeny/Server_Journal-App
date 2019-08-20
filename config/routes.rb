Rails.application.routes.draw do

  resources :posts, path: ''
  resources :locations
  resources :users, only: [:index, :show]

  post "https://journaling-app-backend.herokuapp.com//signin", to: "users#signin"
  post "https://journaling-app-backend.herokuapp.com//signup", to: "users#signup"
  get "https://journaling-app-backend.herokuapp.com//validate", to: "users#validate"
  get "https://journaling-app-backend.herokuapp.com//user_posts", to: "users#user_posts"
  get "https://journaling-app-backend.herokuapp.com//locations", to: "users#locations"

end
