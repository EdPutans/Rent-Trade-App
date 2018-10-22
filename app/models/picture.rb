class Picture < ApplicationRecord
  belongs_to :listing, optional: true
end
