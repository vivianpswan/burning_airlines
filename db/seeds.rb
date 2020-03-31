# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => 'Viv'
u2 = User.create :name => 'Azzi', :admin => true
u3 = User.create :name => 'Kuljit', :admin => true

puts "#{ User.count } users created"

Plane.destroy_all
p1 = Plane.create :name => 'Virgin', :row => '5', :column => '5', :user_id=> 1
p2 = Plane.create :name => 'Qantas', :row => '6', :column => '6', :user_id=> 2

puts "#{ Plane.count } planes created"

Flight.destroy_all
f1 = Flight.create :flight_name => '747', :origin => 'Sydney', :destination => 'Singapore', :flight_date => "01-05-2020",  user_id => 1, plane_id => 1
f2 = Flight.create :flight_name => '757', :origin => 'Melbourne', :destination => 'Italy', :flight_date => "01-06-2020", user_id => 2, plane_id => 2
f1 = Flight.create :flight_name => '757', :origin => 'Melbourne', :destination => 'Italy', :flight_date => "01-06-2020", user_id => 3, plane_id => 1


puts "#{ Flight.count } flights created"

Reservation.destroy_all
r1 = Reservation.create :name => 'Viv', :origin => 'Sydney', :destination => 'Singapore', :reservation_date => "01-05-2020", user_id => 1, flight_id => 1
r2 = Reservation.create :name => 'Azzi', :origin => 'Melbourne', :destination => 'Italy', :reservation_date => "01-06-2020", user_id => 2, flight_id => 2
r3 = Reservation.create :name => 'Kuljit', :origin => 'Sydney', :destination => 'Singapore', :reservation_date => "01-05-2020", user_id => 3, flight_id => 1


puts "#{ Plane.count } planes created"

# Associations #################################################################
puts "Users and Planes"
u1.students << p1
u2.students << p2
u3.students << p1

puts "Users and Flights"
u1.programs << f1
u2.programs << f2
u3.programs << f3

puts "Users and Reservations"
u1.programs << r1
u2.programs << r2
u3.programs << r3

puts "Planes and Fights"
p1.programs << f1
p2.programs << f2

puts "Flights and Reservations"
f1.programs << r1 << r3
f2.programs << r2

