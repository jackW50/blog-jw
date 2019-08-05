class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :commented_users, through: :comments, source: :user

  def self.by_date
    Post.order(date: :desc)
  end
end
