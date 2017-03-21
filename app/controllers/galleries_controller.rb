class GalleriesController < ApplicationController

  before_action :find_gallery, only: [:show, :edit]
  before_action :require_user, only: [:new, :create, :destroy]

  def index
  end

  def show
    @pictures = @gallery.pictures
  end

  def edit
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = current_user.galleries.new(gallery_params)
    if @gallery.save
      redirect_to @gallery
    else
      render :new
    end
  end

  def destroy
    @gallery.destroy
    redirect_to :root
  end

  private

  def gallery_params
    params.require(:gallery).permit(:name, :description)
  end

  def find_gallery
    @gallery = Gallery.find(params[:id])
  end

  def user_galleries
    @galleries = Gallery.find(params[:user_id])
  end

end
