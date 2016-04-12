class Map
    def reverse_direction(direction)
        reverser = {
            "east" => "west",
            "west" => "east",
            "north" => "south",
            "south" => "north",
        }
        reverser[direction]
    end

    def link_rooms(room_1, room_2, direction)
        room_1.set_exit(room_2, direction)
        room_2.set_exit(room_1, reverse_direction(direction))
    end
end