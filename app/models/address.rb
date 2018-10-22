class Address < ApplicationRecord
  belongs_to :listing, optional: true
end
