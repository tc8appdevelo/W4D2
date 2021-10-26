module Slideable
    HORIZONTAL_DIRS = [[1,0], [-1,0], [0,1], [0,-1]]
    DIAGONAL_DIRS = [[1,1], [-1,1], [1,-1], [-1,-1]]
    
    def moves(moves, pos)
        valid_moves = []
        # cur_x, cur_y = pos
        moves.each do |(dx, dy)|
            grow_moves = grow_unblocked_moves_in_dir(dx, dy)
            # new_pos = [cur_x + dx, cur_y + dy]

            # if new_pos.all? { |coord| coord.between?(0, 7) }
            valid_moves + grow_moves
        end
        valid_moves
    end
    

   

    private

    def moves_dirs
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        unblocked_moves = []
        !stopped = false
        cur_x, cur_y = pos
        while !stopped
            new_pos = [cur_x + dx, cur_y + dy]
            if @board.valid_pos?(new_pos)
                if !@board[new_pos].is_a?(Piece)
                    unblocked_moves << new_pos
                elsif @board[new_pos].is_a?(Piece) #&& !@board[new_pos].is_a?(NullPiece)
                    !stopped = true
                end
            end
        end
        unblocked_moves
    end
end