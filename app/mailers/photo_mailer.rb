class PhotoMailer < ApplicationMailer

  def share(picture, email)
    @picture = picture
    mail(to: email, subject: "Get a load of this pic!")
  end

end
