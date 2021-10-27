require_relative 'piece.rb'
require_relative 'slideable'
class Rook < Piece
    include Slideable

    def symbol
        :Rook
    end

    # change to override moves_dirs
    def moves_dirs
        HORIZONTAL_DIRS
    end
end