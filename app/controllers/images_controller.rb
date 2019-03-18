class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(params.require(:image).permit(:filename))

    if @image.save
      redirect_to @image, notice: "Image saved"
    else
      render :new
    end
  end
end
