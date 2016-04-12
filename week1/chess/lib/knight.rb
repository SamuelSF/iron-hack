require_relative "chess_piece"

class Knight < ChessPiece
    def move?(file, rank)
        ((@rank - rank).abs == 2 && (@file - file).abs == 1) || ((@rank - rank).abs == 1 && (@file - file).abs == 2)
    end
end

knight = Knight.new(5, 3, :black)

puts "The following should be true."
puts knight.move?(3, 4)
puts knight.move?(3, 2)
puts knight.move?(4, 1)
puts knight.move?(6, 1)
puts knight.move?(7, 4)
puts knight.move?(7, 2)
puts knight.move?(4, 5)
puts knight.move?(6, 5)
puts "The following should be false."
puts knight.move?(4, 3)
puts knight.move?(5, 5)
puts knight.move?(4, 6)
puts knight.move?(3, 5)