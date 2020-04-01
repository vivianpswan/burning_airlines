class Flight < ApplicationRecord
  belongs_to :planes, :optional => true
  has_many :reservations

  # Scope of filter elements on search Page
scope :filter_by_origin, -> (origin) { where origin: origin }
scope :filter_by_destination, -> (destination) { where destination: destination }
end
