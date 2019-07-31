class PostsController < ApplicationController


      def index
        posts = Post.all
        render json: posts, include: [:location]
      end
    
      def show

        post = Post.find_by(id: params[:id])
        if post
          render json: post, include: [:location]
        else
          render json: { error: "Post not found." }, status: 404
        end
      end
    
      def create
        # tone = tone.find_or_create_by(name: params[:tone])

        user = current_user
        location = Location.find_or_create_by(name: params[:location_name], longitude: params[:longitude], latitude: params[:latitude]  )
        post = Post.new(title: params[:title], content: params[:content], user_id: user.id, location_id: location.id)
        post.tone = post.get_tone
        
        if post.valid?
          post.save
          render json: post
        else 
          render json: { error: "ohhh no! something went terribly wrong" }
        end
      end

      def update
        user = current_user
        post = Post.find_by(id: params[:id])
        location = Location.find_or_create_by(name: params[:location_name], longitude: params[:longitude], latitude: params[:latitude]  )
        if location
          post.update(title: params[:title], content: params[:content], user_id: user.id, location_id: location.id)
          post.tone = post.get_tone
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
        params.require(:post).permit(:user_id, :title, :content, :location_id, :tone)
      end
    end
    