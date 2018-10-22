class User < ApplicationRecord
  has_many :favourites
  has_many :relevants
  has_many :listings, through: :favourites
  has_many :listings, through: :relevants
  has_many :listings
end
