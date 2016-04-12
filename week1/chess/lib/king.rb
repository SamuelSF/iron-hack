require_relative "chess_piece.rb"

class King < ChessPiece
    def move?(file, rank)
        ((@file - file).abs <= 1 && (@rank - rank).abs <= 1) && !(@file == file && @rank == rank)
    end
end

king = King.new(6, 4, :black)

puts "The following should be true."
puts king.move?(5, 3)
puts king.move?(6, 3)
puts king.move?(7, 3)
puts king.move?(7, 4)
puts king.move?(7, 5)
puts king.move?(6, 5)
puts king.move?(5, 5)
puts king.move?(5, 4)
puts "The following should be false."
puts king.move?(6, 4)
puts king.move?(3, 3)
puts king.move?(4, 5)
puts king.move?(4, 8)
puts king.move?(8, 8)