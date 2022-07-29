class Comments::LikesController < LikesController
  before_action :set_likeable, :return_to

  private

    def set_likeable
      @likeable = Comment.find(params[:comment_id])
    end

    def return_to
      @return = Comment.find(params[:comment_id]).post
    end
end
