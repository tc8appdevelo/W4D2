require_relative 'piece.rb'
require_relative 'slideable'
class Queen
    def initialize(color,board,pos)
        @color = color
        @board = board
        @pos = pos 
    end

    def symbol
    end

    def moves_dirs
        # return the directions in which a queen cam move
        # horizontally AND diagonally
    end
end