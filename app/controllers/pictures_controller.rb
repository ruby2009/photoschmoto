class PicturesController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user = current_user
    if @picture.save
      redirect_to @picture.gallery
    else
      render :new
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:image_url, :caption)
  end

  def find_picture
    @picture = Picture.find(params[:id])
  end

end
