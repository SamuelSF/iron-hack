require_relative "chess_piece.rb"

class Rook < ChessPiece
    def move?(file, rank)
        (file == @file || rank == @rank) && !(file == @file && rank == @rank)
    end
end

# class unit test follows

rook = Rook.new(4, 4, :white)

puts "The following should be true."
puts rook.move?(4, 7)
puts rook.move?(1, 4)
puts rook.move?(7, 4)
puts rook.move?(4, 1)
puts "The following should be false."
puts rook.move?(2, 6)
puts rook.move?(4, 4)
puts rook.move?(7, 3)
puts rook.move?(2, 1)
puts rook.move?(7, 5)
puts rook.move?(3, 3)