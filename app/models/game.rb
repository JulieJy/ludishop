class Game < ApplicationRecord
  # belongs_to :buyer, class_name: 'User'
  belongs_to :user

  validates :name, :description, :price, presence: true
end
