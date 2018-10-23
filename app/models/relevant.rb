class Relevant < ApplicationRecord
  belongs_to :user, optional: true
end
