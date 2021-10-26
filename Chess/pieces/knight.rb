require_relative 'piece.rb'
require_relative 'stepable.rb'

class Knight < Piece
include Stepable

    MOVES = [
    [-2, -1],
    [-2,  1],
    [-1, -2],
    [-1,  2],
    [ 1, -2],
    [ 1,  2],
    [ 2, -1],
    [ 2,  1]
  ]

    # def initialize(color,board,pos)
    #     @color = color
    #     @board = board
    #     @pos = pos 
    # end

    def symbol
        :Knight
    end

    def moves_diffs
        MOVES
    end

end

