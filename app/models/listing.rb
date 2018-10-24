class Listing < ApplicationRecord
  has_one :address
  has_many :relevants
  has_many :favourites
  has_many :users, through: :favourites
  has_many :users, through: :relevants
  belongs_to :user, optional: true


  validates :description, :title, :landlord_name, :landlord_info, :landlord_phone, :landlord_email, :postcode, presence: true
  # date, :available,
  validates :title, :landlord_phone, :landlord_name, uniqueness: true
  # validates :postcode, length: {maximum: 7}
  validates :landlord_phone, numericality: true

  def self.search(search)
    where("title LIKE ? OR description LIKE ? OR postcode LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
