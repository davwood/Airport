require './lib/plane.rb'
require './lib/airport.rb'
require './lib/sky.rb'
require './lib/air_controller.rb'
require './lib/runway.rb'


eagle = Plane.new
airport = Airport.new(20, Plane.new, Plane.new, eagle)

sky = Sky.new
runway = Runway.new
aircontroller = AirController.new

puts "planes at the airport"
print airport.airport_planes

puts "plane takes off"
puts eagle.take_off_from(runway, airport, sky, aircontroller)

puts "planes at the airport"
print airport.airport_planes

puts "plane lands at airport"
print eagle.land_at(airport, sky)

puts "planes at the airport"
print airport.airport_planes
