class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :posts_commented_on, through: :comments, source: :post
end
