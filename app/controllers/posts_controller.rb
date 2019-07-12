class PostsController < ApplicationController

    def my_posts
        if logged_in
          render json: User.find(current_user[:id]).posts
        else 
          render json: {error: "Posts not available."}
        end
      end

end
