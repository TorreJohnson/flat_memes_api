class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :rating, :created_at
  belongs_to :meme
end
