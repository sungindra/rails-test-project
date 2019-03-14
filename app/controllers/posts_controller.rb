class PostsController < ApplicationController
  before_action :lookup, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: "Post saved"
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Post updated"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: "Post deleted"
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

    def lookup
      @post = Post.friendly.find(params[:id])
    end
end