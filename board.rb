class Board

  BOARD_MAX_INDEX = 2
  EMPTY_POS = ' '

  attr_reader :board, :current_player

  def initialize(current_player)
    @current_player = current_player
    @board = Array.new(BOARD_MAX_INDEX + 1) {
      Array.new(BOARD_MAX_INDEX + 1) { EMPTY_POS }
    }
  end

  #board
  def display
    puts "+- - - - - -+"
    for row in 0..BOARD_MAX_INDEX
      print '| '
      for col in 0..BOARD_MAX_INDEX
        s = @board[row][col]
        if s == EMPTY_POS
          print col + (row * 3) + 1
        else
          print s
        end
        print ' | '
      end
      puts "\n+- - - - - -+"
    end
  end

  def full?
    for row in 0..BOARD_MAX_INDEX
      for col in 0..BOARD_MAX_INDEX
        if @board[row][col] == EMPTY_POS
          return false
        end
      end
    end
    #if no open pos
    return true
  end

  def winner
    winner = winner_rows
    if winner
      return winner
    end

    winner = winner_columns
    if winner
      return winner
    end

    winner = winner_diagonals
    if winner
      return winner
    end
  end

  def winner_rows
    for row_index in 0..BOARD_MAX_INDEX
      first_symbol = @board[row_index][0]
      for col_index in 1..BOARD_MAX_INDEX
        if first_symbol != @board[row_index][col_index]
          break
        elsif col_index == BOARD_MAX_INDEX and first_symbol != EMPTY_POS
          return first_symbol
        end
      end
    end
    return
  end

  def winner_columns
    for col_index in 0..BOARD_MAX_INDEX
      first_symbol = @board[0][col_index]
      for row_index in 1..BOARD_MAX_INDEX
        if first_symbol != @board[row_index][col_index]
          break
        elsif row_index == BOARD_MAX_INDEX and first_symbol != EMPTY_POS
          return first_symbol
        end
      end
    end
  end








  def tie

  end

  def get_next_turn

  end

end
