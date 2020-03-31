# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => 'Viv'
u2 = User.create :name => 'Azzi'
u3 = User.create :name => 'Kuljit', :admin => true

puts "#{ User.count } users created"

Plane.destroy_all
p1 = Plane.create :name => 'Virgin', :row => '5', :column => '5' 
p2 = Plane.create :name => 'Qantas', :row => '6', :column => '6'

puts "#{ Plane.count } planes created"

Flight.destroy_all
f1 = Flight.create :flight_name => '747', :origin => 'Sydney', :destination => 'Singapore', :flight_date => "01-05-2020"
f2 = Flight.create :flight_name => '757', :origin => 'Melbourne', :destination => 'Italy', :flight_date => "01-06-2020"


puts "#{ Flight.count } flights created"

Reservation.destroy_all
r1 = Reservation.create :name => 'Viv', :origin => 'Sydney', :destination => 'Singapore', :reservation_date => "01-05-2020"
r2 = Reservation.create :name => 'Azzi', :origin => 'Melbourne', :destination => 'Italy', :reservation_date => "01-06-2020"
r3 = Reservation.create :name => 'Kuljit', :origin => 'Sydney', :destination => 'Singapore', :reservation_date => "01-05-2020"


puts "#{ Plane.count } planes created"

# Associations #################################################################
puts "Users and Planes"
u3.planes << p1 << p2

puts "Planes and Fights"
p1.flights << f1 << f2

puts "Users and Reservations"
u1.reservations << r1
u2.reservations << r2

puts "Flights and Reservations"
f1.reservations << r1 << r3
f2.reservations << r2

