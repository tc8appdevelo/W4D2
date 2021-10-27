require "byebug"
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
            p grow_moves
            puts "===="
            valid_moves.concat(grow_moves)
            p valid_moves
        end
        valid_moves
    end

    def horizontan_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end
   

    private

    def moves_dirs
        #raise NotImplementedError
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        unblocked_moves = []
        stopped = false
        cur_x, cur_y = pos
        new_pos = [cur_x + dx, cur_y + dy]
        while !stopped
            cur_x += dx
            cur_y += dy
            new_pos = [cur_x, cur_y]
            if @board.valid_pos?(new_pos)
                #p new_pos
                #if !@board[new_pos].is_a?(Piece)
                unblocked_moves << new_pos
                p "stuck"
            else
                break
                stopped = true
            end
        end
        unblocked_moves
    end
end