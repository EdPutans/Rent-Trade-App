class User < ApplicationRecord
  has_many :favourites
  has_many :relevants
  has_many :listings, through: :favourites
  has_many :listings, through: :relevants
  has_many :listings
  
  # validates :first_name, :last_name, :phone, :email, :username, :password, :bio, presence: true
  # validates :full_name, :phone, :email, :username, :password, uniqueness: true
  # validates :phone, numericality: {equal_to: 10}
  # validates :password, length: {:within => 8..20}
end
