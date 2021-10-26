require_relative 'rook.rb'
require_relative 'knight.rb'
require_relative 'bishop.rb'
require_relative 'king.rb'
require_relative 'queen.rb'
require_relative 'pawn.rb'
require_relative 'nullpiece.rb'
require_relative 'piece.rb'

# require_relative 'pieces'

class Board
attr_reader :grid
    def initialize
        @rows = Array.new(8) {Array.new(8,nil)}
        self.fill_board
    end

    def [](pos)
    # x,y = pos
    @rows[pos[0]][pos[1]]
    end 

    def []=(pos,val)
    # x,y = pos
      @rows[pos[0]][pos[1]]= val
    end

    def fill_board
        # pos = [0,0]
        self[[0,0]] = Rook.new("white",self,[0,0])
        self[[0,1]] = Knight.new("white",self,[0,1])
        self[[0,2]] = Bishop.new("white",self,[0,2])
        self[[0,3]] = Queen.new("white",self,[0,3])
        self[[0,4]] = King.new("white",self,[0,4])
        self[[0,5]] = Bishop.new("white",self,[0,5])
        self[[0,6]] = Knight.new("white",self,[0,6])
        self[[0,7]] = Rook.new("white",self,[0,7])

        self[[1,0]] = Pawn.new("white",self,[1,0])
        self[[1,1]] = Pawn.new("white",self,[1,1])
        self[[1,2]] = Pawn.new("white",self,[1,2])
        self[[1,3]] = Pawn.new("white",self,[1,3])
        self[[1,4]] = Pawn.new("white",self,[1,4])
        self[[1,5]] = Pawn.new("white",self,[1,5])
        self[[1,6]] = Pawn.new("white",self,[1,6])
        self[[1,7]] = Pawn.new("white",self,[1,7])


        self[[7,0]] = Rook.new("black",self,[7,0])
        self[[7,1]] = Knight.new("black",self,[7,1])
        self[[7,2]] = Bishop.new("black",self,[7,2])
        self[[7,3]] = Queen.new("black",self,[7,3])
        self[[7,4]] = King.new("black",self,[7,4])
        self[[7,5]] = Bishop.new("black",self,[7,5])
        self[[7,6]] = Knight.new("black",self,[7,6])
        self[[7,7]] = Rook.new("black",self,[7,7])

        self[[6,0]] = Pawn.new("black",self,[6,0])
        self[[6,1]] = Pawn.new("black",self,[6,1])
        self[[6,2]] = Pawn.new("black",self,[6,2])
        self[[6,3]] = Pawn.new("black",self,[6,3])
        self[[6,4]] = Pawn.new("black",self,[6,4])
        self[[6,5]] = Pawn.new("black",self,[6,5])
        self[[6,6]] = Pawn.new("black",self,[6,6])
        self[[6,7]] = Pawn.new("black",self,[6,7])

    end 

    def move_piece(start_pos, end_pos)
        if !valid_pos?(start_pos) || !valid_pos?(end_pos)
        raise "Not a valid position"
        end 

        if self[start_pos].nil?
            raise "No piece at start position"
        end
        if !self[end_pos].nil?
            raise "Cant move there"
        end

        self[end_pos], self[start_pos] = self[start_pos], self[end_pos]

        p self[end_pos]

    end

    def valid_pos?(pos)
        pos.all? { |position| position.between?(0,7)}
    end 

end
b = Board.new
k = Rook.new("White",b,[3,3])
# k.moves_diffs
p k.moves(k.moves_diffs,[3,3])
