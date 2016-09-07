class PostsController < ApplicationController

  def create
    @post = current_user.posts.create(post_params)
    redirect_to show_profile_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
