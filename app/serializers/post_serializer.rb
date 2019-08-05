class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :user, :comments

  has_many :comments, serilaizer: CommentSerializer
  belongs_to :user, serilalizer: UserSerializer
end
