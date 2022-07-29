class LikesController < ApplicationController
    before_action :set_like, only: %i[ destroy ]
    before_action :set_post, only: %i[ create destroy ]

    def create
        @like = Like.new(user: current_user, likeable_type: 'Post', likeable_id: @post.id)

        respond_to do |format|
            if @like.save
              format.html { redirect_to post_url(@post), notice: "Like was successfully created." }
            end
        end
    end

    def destroy
        @like.destroy
        
        redirect_to post_url(@post)
    end

    private
    def set_like
        @like = Like.find(params[:id])
    end

    def set_post
        @post = Post.find(params[:post_id])
    end
end
