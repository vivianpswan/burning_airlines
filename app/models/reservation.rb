class Reservation < ApplicationRecord
  belongs_to :flights
  belongs_to :users
end
