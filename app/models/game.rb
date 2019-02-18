class Game < ApplicationRecord
  belongs_to :buyer
  belongs_to :user
end
