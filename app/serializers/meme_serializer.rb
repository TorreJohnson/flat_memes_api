class MemeSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :text, :rating, :created_at
  has_many :comments
end
