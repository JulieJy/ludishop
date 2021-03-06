class Game < ApplicationRecord
  belongs_to :buyer, class_name: 'User', optional: true
  belongs_to :user

  validates :name, :description, :price, presence: true
  mount_uploader :photo, PhotoUploader
end
