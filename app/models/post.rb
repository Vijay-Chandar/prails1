class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :blogs
  has_many :tags
end
