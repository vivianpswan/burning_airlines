json.extract! flight, :id, :flight_name, :origin, :destination, :flight_date, :plane_id, :user_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
