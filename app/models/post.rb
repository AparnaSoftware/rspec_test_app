class Post < ActiveRecord::Base
  attr_accessible :post_message, :user_id, :image
  mount_uploader :image, ImageUploader
end
