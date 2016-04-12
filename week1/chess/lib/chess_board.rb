class ChessBoard
    attr_reader: :coordinates
    def initiate
        @coordinates = {}
    end

    def add_piece!(piece, file, rank)
        @coordinates[[file, rank]] = piece
    end

    def check_square(file, rank)
        @coordinates[[file, rank]]
    end

    def remove_piece!(file, rank)
        @coordinates[[file, rank]] = nil
    end
end