
class Hotel < ApplicationRecord


  belongs_to :user

  validates :title, presence: true

  mount_uploader :photo, PhotoUploader
end