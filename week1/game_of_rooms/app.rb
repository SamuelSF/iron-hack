require_relative "lib/room.rb"
require_relative "lib/map.rb"

west_room = Room.new
east_room = Room.new
north_room = Room.new
south_room = Room.new
central_room = Room.new

west_room.set_description("This is the western room.")
east_room.set_description("This is the eastern room.")
north_room.set_description("This is the northern room.")
south_room.set_description("This is the southern room.")
central_room.set_description("This is the central room.")



map = Map.new

map.link_rooms(west_room, central_room, "east")
map.link_rooms(east_room, central_room, "west")
map.link_rooms(north_room, central_room, "south")
map.link_rooms(south_room, central_room, "north")

current_room = central_room

current_room.print_description

puts "Where would you like to go?"
print "> "
input = gets.chomp.downcase
