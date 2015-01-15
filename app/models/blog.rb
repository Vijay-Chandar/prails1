class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :post
  has_many :users
end
