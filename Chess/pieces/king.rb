require_relative 'piece.rb'
class King < Piece
    include Stepable

    MOVES = [
    [1,0],
    [-1,0],
    [0,1],
    [0,-1],
    [1,1],
    [-1,1],
    [1,-1],
    [-1,-1]
  ]
    def symbol
        :King
    end

    def moves_diffs
        MOVES
    end
end