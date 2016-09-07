class PostsController < ApplicationController


  def create
    @post = current_user.posts.create(post_params)
    redirect_to show_profile_path
  end

  def new
    @post = Post.new
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :expiration)
    end
end
