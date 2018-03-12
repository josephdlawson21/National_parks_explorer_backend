class User < ApplicationRecord
  has_many :trips
  has_many :reviews, through: :trips
end
