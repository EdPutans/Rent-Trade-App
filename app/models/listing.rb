class Listing < ApplicationRecord
  has_one :address
  has_many :relevants
  has_many :favourites
  has_many :users, through: :favourites
  has_many :users, through: :relevants
  belongs_to :user, optional: true


  validates :description, :title, :date, :lanlord_name, :lanlord_info, :lanlord_phone, :lanlord_email, :address_id, :available, presence: true
  validates :email, :title, :lanlord_phone, :lanlord_name, uniqueness: true
  validates :lanlord_phone, numericality: {equal_to: 10}

end
