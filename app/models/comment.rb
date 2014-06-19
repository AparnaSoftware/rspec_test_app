class Comment < ActiveRecord::Base
  attr_accessible :description, :email, :name, :rating
end
