class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def newsletter(user)
    @users = User.find_by(subcribe: true)
    @url  = 'http://localhost:3000/users/sign_in'
    @users.each do |user|
      mail(to: user.email, subject: 'Come back !')
    end
  end


end
