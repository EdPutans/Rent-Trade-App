class Favourite < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :listing, optional: true
end
