class UsersController < ApplicationController

  def index
      user = User.all
      render json: user, include: [:posts]
  end

    
  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user, include: [:posts]
    else
      render json: { error: "User not found."}, status: 404
    end
  end

  def signin
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      render json: { username: user.username, token: issue_token({ id: user.id }), posts: user.posts }
    else
      render json: { error: 'Login failed. Invalid username/password combination.' }, status: 401
    end
  end

  def validate
    user = current_user
    if user
      render json: { username: user.username, token: issue_token({ id: user.id }), posts: user.posts }
    else
      render json: { error: 'User not found.' }, status: 404
    end
  end
    
    def signup
      user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], username: params[:username], password: params[:password])
      if user.save
        render json: { username: user.username, token: issue_token({ id: user.id }), posts: user.posts }
      else 
        render json: {error: "Signup not successful!"}
      end 
    end 

    def user_posts
      user = current_user
      if user 
        render json: User.find(current_user[:id]).posts, include: [:location]
      else 
        render json: {error: "Posts not available."}, status: 400
      end
    end 

end
