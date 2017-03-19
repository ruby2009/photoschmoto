class UserMailer < ApplicationMailer

  def signup(user)
    @user = user
    mail(to: 'bgcall@indiana.edu', subject: "Welcome to PhotoSchmoto!")
  end

end
