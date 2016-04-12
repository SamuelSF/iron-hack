require_relative "lib/hover_craft.rb"
require_relative "lib/motor_bike.rb"
require_relative "lib/noise_listener.rb"
require_relative "lib/car.rb"
require_relative "lib/wheel_counter.rb"

Harley = MotorBike.new
Ford = Car.new
Floater = HoverCraft.new

vehicles = [Harley, Ford, Floater]

listener = NoiseListener.new(vehicles)

counter = WheelCounter.new(vehicles)

puts "The noises are:"
listener.listen_to_noises

puts "The total number of wheels is #{counter.count_wheels}"