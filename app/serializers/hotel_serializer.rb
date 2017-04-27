class HotelSerializer < ActiveModel::Serializer
  attributes :id, :title, :star_rating, :room_description
end
