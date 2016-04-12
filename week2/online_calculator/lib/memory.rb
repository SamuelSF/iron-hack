class Memory
    def initialize(file)
        @file = file
    end
    def save(num)
        IO.write(@file, num)
    end

    def load
        result = nil
        if File.exist?(@file)
        result = IO.read(@file)
        end
        result
    end
end