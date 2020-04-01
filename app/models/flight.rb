class Flight < ApplicationRecord
  belongs_to :planes, :optional => true
  has_many :reservations
end
