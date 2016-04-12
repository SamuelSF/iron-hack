require_relative "chess_piece.rb"

class Pawn < ChessPiece
    def initialize(file, rank, color)
        super(file, rank, color)
        @first_move = true
    end
    def move?(file, rank)
        if @color == :white
            if @first_move
                @file == file && (rank - @rank) <= 2 && (rank - @rank) >=  0
            else
                @file == file && (rank - @rank) == 1
            end
        else
            if @first_move
                @file == file && (rank - @rank) >= -2 && (rank - @rank) <= 0
            else
                @file == file && (rank - @rank) == -1
            end
        end

    end

    def move!(file, rank)
        @first_move = false
        super(file, rank)
    end
end

black_pawn = Pawn.new(3, 7, :black)

white_pawn= Pawn.new(3, 2, :white)

puts "Testing white pawn on first move.  The following should be true."
puts white_pawn.move?(3, 3)
puts white_pawn.move?(3, 4)
puts "The following should be false."
puts white_pawn.move?(3, 5)
puts white_pawn.move?(2, 4)
puts white_pawn.move?(3, 1)

white_pawn.move!(3, 3)
puts "\nTesting white pawn on second move. The following should be true."
puts white_pawn.move?(3, 4)
puts "The following should be false."
puts white_pawn.move?(3, 6)

puts "\nTesting black pawn on first move.  The following should be true."
puts black_pawn.move?(3, 6)
puts black_pawn.move?(3, 5)
puts "The following should be false."
puts black_pawn.move?(3, 8)
puts black_pawn.move?(2, 6)

black_pawn.move!(3, 6)
puts "\nTesting black pawn on second move.  The following should be true."
puts black_pawn.move?(3, 5)
puts "The following should be false."
puts black_pawn.move?(3, 4)