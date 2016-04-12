class NoiseListener
    def initialize(vehicles)
        @vehicles = vehicles
    end
    def listen_to_noises
        @vehicles.each do |vehicle|
            puts vehicle.noise
        end
    end
end