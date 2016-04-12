class WheelCounter
    def initialize(vehicles)
        @vehicles = vehicles
    end
    def count_wheels
        @vehicles.reduce(0) do |total_wheels, vehicle|
            total_wheels + vehicle.number_of_wheels
        end
    end
end
