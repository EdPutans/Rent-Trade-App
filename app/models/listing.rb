class Listing < ApplicationRecord
  has_one :address
  has_many :relevants
  has_many :favourites
  has_many :users, through: :favourites
  has_many :users, through: :relevants
  belongs_to :user
end
