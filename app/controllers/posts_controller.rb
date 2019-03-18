class PostsController < ApplicationController
  before_action :lookup, only: [:show, :edit, :update, :destroy, :toggle_status]

  def index
    @posts = Post.by_position
    @page_title = "Posts"
  end

  def show
    @page_title = @post.title
  end

  def new
    @post = Post.new
    @page_title = "New Post"
  end

  def edit
    @page_title = "Edit Post"
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

  def toggle_status
    if @post.draft?
      @post.published!
    elsif  @post.published?
      @post.draft!
    end
    redirect_to posts_path, notice: "#{@post.title} status has changed to #{@post.status}"
  end

  def sort
    params[:order].each do |key, value|
      Post.find(value[:id]).update(position: value[:position])
    end
    render nothing: :true
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

    def lookup
      @post = Post.friendly.find(params[:id])
    end
end