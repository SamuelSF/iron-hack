class ChessPiece
    attr_reader :color
    def initialize(file, rank, color)
        @file = file
        @rank = rank
        @color = color
    end

    def move!(file, rank)
        @file = file
        @rank = rank
    end
end