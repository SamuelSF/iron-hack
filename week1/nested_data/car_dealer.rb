require "pry"

class CarDealer
    def initialize
        @cars = {}
    end
    def add_car(make, model)
        if @cars[make].class == Array
            @cars[make].push(model)
        else
            @cars[make] = [model]
        end
    end

    def print_inventory
        @cars.each do |make, models|
            model_string = ""
            models.each do |model|
                model_string << "#{model} "
            end
            puts "#{make}: " + model_string
        end
    end
end

binding.pry