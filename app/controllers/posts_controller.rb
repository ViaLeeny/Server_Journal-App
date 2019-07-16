class PostsController < ApplicationController


      def index
        posts = Post.all
        render json: posts
      end
    
      def show
        post = Post.find_by(id: params[:id])
        if post
          render json: post
        else
          render json: { error: "Post not found." }, status: 404
        end
      end
    
      def create
        post = Post.create(title: params[:title], content: params[:content], user_id: params[:user_id])
        render json: post
      end
    
      def update
        post = Post.find_by(id: params[:id])
        if post
          post.update(post_params)
          render json: post
        else
          render json: { error: "Post doesn't exist" }
        end
      end
    
      def destroy
        
        post = Post.find_by(id: params[:id])
        if post
          post.destroy
          render json: post
        else
          render json: { error: "Post doesn't exist" }
        end
      end
    
      private
    
      def post_params
        params.require(:post).permit(:user_id, :title, :content)
      end
    end
    