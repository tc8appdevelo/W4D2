require_relative 'piece.rb'

class Rook < Piece
     def initialize(color,board,pos)
        @color = color
        @board = board
        @pos = pos 
    end
end