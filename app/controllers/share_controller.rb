class ShareController < ApplicationController

  def new
    @gallery = Gallery.find(params[:gallery_id])
      if params[:picture_id]
        @picture = Picture.find(params[:picture_id])
        @url = gallery_picture_share_index_path(@gallery, @picture)
      else
        @url = gallery_share_index_path(@gallery)
      end
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @picture = Picture.find(params[:picture_id])
    if params[:share][:email].blank?
      flash[:warning] = "Please enter an email"
      render :new
    else
      if params[:picture_id]
        PhotoMailer.share(@picture, params[:share][:email]).deliver
        flash[:success] = "Shared"
        redirect_to [@gallery, @picture]
      else
        GalleryMailer.share(@gallery, params[:share][:email]).deliver
        flash[:success] = "Shared"
        redirect_to @gallery
      end
    end
  end

end
