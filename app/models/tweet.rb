class Tweet < ApplicationRecord
  #TODO: validates
  belongs_to :user
  has_many :likes
  has_many :like_users, through: :likes, source: :user
end
