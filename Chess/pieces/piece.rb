class Piece
    attr_reader :color, :pos
    def initialize(color,board,pos)
        @color = color
        @board = board
        @pos = pos 
    end

    def to_s
    end

    def empty?
    end

    def symbol
    end

    def valid_moves
    end
    
    def enemy?(piece)
        @color != piece.color
    end

    def ally?(piece)
        @color == piece.color
    end

end