class User < ApplicationRecord
  #TODO: validates
  has_many :tweets
  has_many :likes
  has_many :like_tweets, through: :likes, source: :tweet
end
