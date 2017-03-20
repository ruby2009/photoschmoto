class ShareController < ApplicationController

  def new
  end

  def create
    @gallery = Gallery.find(params[:id])
    @email = params[:share][:email]
    GalleryMailer.share_gallery(@gallery, @email).deliver
    flash[:success] = "Shared"
    redirect_to @gallery
  end

end
