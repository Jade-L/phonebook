class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def newsletter(user)
    @user = user
    @url = 'http://localhost:3000/users/sign_in'
      mail(to: user.email, subject: 'Come back !')
  end

  def promo(user, topPromo)
    @user = user
    @topPromo = topPromo
    mail(to: user.email, subject: 'The things you liked are sold !')
  end

end
