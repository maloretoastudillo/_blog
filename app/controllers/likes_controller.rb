class LikesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_like, only: %i[ destroy ]

    def create
        @like = Like.new(likeable: @likeable, user: current_user)

        respond_to do |format|
            if @like.save
              format.html { redirect_to @return, notice: "Like was successfully created." }
            end
        end
    end

    def destroy
        @like.destroy

        redirect_to @return
    end

    private
    def set_like
        @like = Like.find(params[:id])
    end
end
