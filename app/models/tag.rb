class Tag < ActiveRecord::Base
  belongs_to :posts
  # has_one :post
end
