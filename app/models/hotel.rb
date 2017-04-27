
class Hotel < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :title, presence: true

  ratyrate_rateable 'star_rating'
  mount_uploader :photo, PhotoUploader
end