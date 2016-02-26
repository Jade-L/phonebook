class Product < ActiveRecord::Base
  has_many :likes
  has_many :users, through: :likes
  mount_uploader :picture, PictureUploader
end
