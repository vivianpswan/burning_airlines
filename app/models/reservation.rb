class Reservation < ApplicationRecord
  belongs_to :flights, :optional => true
  belongs_to :users, :optional => true
end
