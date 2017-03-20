class PicturesController < ApplicationController

  before_action :require_user, only: [:new, :create, :destroy]
  before_action :find_picture, only: [:show]

  def index
  end

  def show
  end

  def edit
  end

  def new
    @gallery = Gallery.find_by(id: params[:gallery_id])
    @picture = Picture.new
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @picture = current_user.pictures.new(picture_params)
    @picture.gallery_id = @gallery.id
    if @picture.save
      redirect_to :root
    else
      render :new
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:url, :caption, :gallery_id)
  end

  def find_picture
    @picture = Picture.find(params[:id])
  end

end
