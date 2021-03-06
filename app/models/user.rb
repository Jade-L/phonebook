class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :likes
  has_many :products, through: :likes
  after_create :send_welcome_email
  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end

end
