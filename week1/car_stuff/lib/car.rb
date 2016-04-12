class Car
    def initialize(color, make, model, sound)
        @color = color
        @make = make
        @model = model
        @miles = 0
        @sound = sound
        @cities = []
    end

    def exhaust_note
        @sound
    end

    def visit_city(city)
        puts "Now visiting #{city}"
        @cities.push(city)
    end

    def print_cities
        @cities.each do |city|
            puts "This car once visited #{city}."
        end
    end
end