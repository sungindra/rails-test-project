class TestBlogsController < ApplicationController
  before_action :set_test_blog, only: [:show, :edit, :update, :destroy]
  layout "test_layout"

  # GET /test_blogs
  # GET /test_blogs.json
  def index
    @test_blogs = TestBlog.all
  end

  # GET /test_blogs/1
  # GET /test_blogs/1.json
  def show
  end

  # GET /test_blogs/new
  def new
    @test_blog = TestBlog.new
  end

  # GET /test_blogs/1/edit
  def edit
  end

  # POST /test_blogs
  # POST /test_blogs.json
  def create
    ## alternative way to create relationship
    # @test_blog = current_user.test_blogs.new(test_blog_params)
    @test_blog = TestBlog.new(test_blog_params)

    respond_to do |format|
      if @test_blog.save
        format.html { redirect_to @test_blog, notice: 'Test blog was successfully created.' }
        format.json { render :show, status: :created, location: @test_blog }
      else
        format.html { render :new }
        format.json { render json: @test_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_blogs/1
  # PATCH/PUT /test_blogs/1.json
  def update
    respond_to do |format|
      if @test_blog.update(test_blog_params)
        format.html { redirect_to @test_blog, notice: 'Test blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_blog }
      else
        format.html { render :edit }
        format.json { render json: @test_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_blogs/1
  # DELETE /test_blogs/1.json
  def destroy
    @test_blog.destroy
    respond_to do |format|
      format.html { redirect_to test_blogs_url, notice: 'Test blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def with_title_of
    @test_blogs = TestBlog.test_scope_title(params[:title])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_blog
      @test_blog = TestBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_blog_params
      params.require(:test_blog).permit(:title, :body).merge(user: current_user)
    end
end
