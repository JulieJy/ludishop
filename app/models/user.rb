class User < ApplicationRecord

  has_many :games
  has_many :reviews, foreign_key: :receiver_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader

  has_many :sold_games, -> { where.not(buyer_id: nil) }, class_name: 'Game'
  has_many :bought_games, class_name: 'Game', foreign_key: :buyer_id
end
