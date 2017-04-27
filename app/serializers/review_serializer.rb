class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text, :rating, :created_at, :user_id, :hotel_id
end
