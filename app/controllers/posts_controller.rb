class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to new_post_path, notice: "Post was successfully created."
    else
      render :new
    end
  end

  def new
    @post = Post.new
  end

  def show
  end

  def home
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
