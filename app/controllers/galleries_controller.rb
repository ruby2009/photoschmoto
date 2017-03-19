class GalleriesController < ApplicationController

  before_action :find_gallery, only: [:show, :edit] 

  def index
  end

  def show
  end

  def edit
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      redirect_to @gallery
    else
      render :new
    end
  end

  private

  def gallery_params
    params.require(:gallery).permit(:name, :description)
  end

  def find_gallery
    @gallery = Gallery.find(params[:id])
  end

end
