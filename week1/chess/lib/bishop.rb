require_relative "chess_piece.rb"

class Bishop < ChessPiece
    def move?(file, rank)
        ((@rank - rank).abs == (@file - file).abs) && !(@rank == rank && @file == file)
    end
end

bishop = Bishop.new(3, 5, :white)

puts "The following should be true."
puts bishop.move?(4, 6)
puts bishop.move?(6, 8)
puts bishop.move?(2, 4)
puts bishop.move?(1, 3)
puts bishop.move?(2, 6)
puts bishop.move?(6, 2)
puts bishop.move?(7, 1)
puts bishop.move?(1, 7)
puts "The following should be false."
puts bishop.move?(3, 2)
puts bishop.move?(1, 8)
puts bishop.move?(6, 7)
puts bishop.move?(8, 1)