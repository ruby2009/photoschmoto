class GalleryMailer < ApplicationMailer

  def share(gallery, email)
     @gallery = gallery
     mail(to: email, subject: "Get a load of this gallery!")
  end

end
