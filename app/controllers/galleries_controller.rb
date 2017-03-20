class GalleriesController < ApplicationController

  before_action :find_gallery, only: [:show, :edit]
  before_action :require_user, only: [:new, :create, :destroy]
  before_action :is_owner, only: [:destroy, :edit]

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
    params.require(:gallery).permit(:name, :description, :user_id)
  end

  def find_gallery
    @gallery = Gallery.find(params[:id])
  end

  def user_galleries
    @galleries = Gallery.find(params[:user_id])
  end

  def is_owner
    @gallery = current_user.galleries.find_by(id: params[:id])
    unless @gallery && @gallery.user == current_user
      flash[:danger] = "That's not your gallery."
      redirect_to :root
    end
  end

end
