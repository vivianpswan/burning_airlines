json.extract! reservation, :id, :name, :origin, :destination, :reservation_date, :user_id, :flight_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
