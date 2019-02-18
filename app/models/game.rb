class Game < ApplicationRecord
  belongs_to :buyer, class_name: 'User'
  belongs_to :user
end
