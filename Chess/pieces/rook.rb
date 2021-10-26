require_relative 'piece.rb'

class Rook < Piece
    include Stepable

    def symbol
        :Rook
    end

    def moves_diffs
        HORIZONTAL_DIRS
    end
end