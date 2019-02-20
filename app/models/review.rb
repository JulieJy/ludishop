class Review < ApplicationRecord
  belongs_to :user
  belongs_to :receiver_id, class_name: 'User'
end
