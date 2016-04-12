class Room
    def initialize()
        @exits = {}
    end

    def set_exit(room, direction)
        @exits[direction] = room
    end

    def switch_rooms(direction)
        @exits[direction]
    end

    def set_description(description)
        @description = description
    end

    def print_description
        puts @description
    end
    def has_exit?(exit)
        @exits.key?(exit)
    end
end