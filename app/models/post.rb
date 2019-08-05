class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :commented_users, through: :comments, source: :user
end
