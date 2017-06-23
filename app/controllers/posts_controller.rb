class PostsController < ApplicationController
  before_action :require_login, only: :index

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:success] = "Post Created!"
    else
      flash[:error] = "Post not created."
    end
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js {}
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :description)
  end
end
