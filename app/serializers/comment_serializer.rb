class CommentSerializer < ActiveModel::Serializer
  attributes :text, :user

  belongs_to :user, serilalizer: UserSerializer
end
