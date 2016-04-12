# app.#!/usr/bin/env ruby -wKU

require_relative "lib/car.rb"

my_car = Car.new("blue", "Nissan", "350Z", "Broom")

puts my_car.exhaust_note

riced_out_car = Car.new("black", "Honda", "Civic", "BROOOM")

puts riced_out_car.exhaust_note

tour_of_florida = ["Key West", "Homestead", "Miami", "Fort Lauderdale", "Fort Myers", "Tampa"]

tour_of_florida.each do |city|
    my_car.visit_city(city)
end

my_car.print_cities