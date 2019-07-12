Rails.application.routes.draw do
  resources :posts
  resources :users

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
    end
  end

  post "/user/create", to: "user#create"
  get "/user/show", to: "user#show"

  get "/posts", to: "posts#my_posts"

end
