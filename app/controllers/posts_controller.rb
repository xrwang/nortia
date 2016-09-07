class PostsController < ApplicationController


  def create
    @post = current_user.posts.create(post_params)
    redirect_to show_profile_path
  end

  def new
    @post = Post.new
  end

  def show
    @users = User.all
    @user = User.find(params[:user_id])
    @post = get_post
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :expiration)
    end

    def get_post
      Post.find(params[:post_id])
    end

end
