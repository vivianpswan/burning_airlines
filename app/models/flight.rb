class Flight < ApplicationRecord
  belongs_to :planes
  has_many   :reservations
end
