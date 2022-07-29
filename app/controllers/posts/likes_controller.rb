class Posts::LikesController < LikesController
  before_action :set_likeable, :return_to

  private

    def set_likeable
      @likeable = Post.find(params[:post_id])
    end

    def return_to
      @return = Post.find(params[:post_id])
    end
end
