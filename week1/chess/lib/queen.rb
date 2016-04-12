require_relative "chess_piece.rb"

class Queen < ChessPiece
    def move?(file, rank)
    (rook_move?(file, rank) || bishop_move?(file, rank)) && !(@rank == rank && @file == file)
    end

    private
    def rook_move?(file, rank)
        (file == @file || rank == @rank)
    end

    def bishop_move?(file, rank)
        ((@rank - rank).abs == (@file - file).abs)
    end
end

queen = Queen.new(4, 5, :black)

puts "The following should be true."
puts queen.move?(4, 7)
puts queen.move?(4, 3)
puts queen.move?(2, 5)
puts queen.move?(6, 5)
puts queen.move?(2, 3)
puts queen.move?(6, 7)
puts queen.move?(2, 7)
puts queen.move?(7, 2)
puts "The following should be false."
puts queen.move?(1, 3)
puts queen.move?(7, 7)
puts queen.move?(2, 9)
puts queen.move?(1, 1)