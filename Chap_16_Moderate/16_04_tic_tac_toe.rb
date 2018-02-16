def tic_tac_toe(board)
  check_rows(board)
  check_colums(board)
  check_diagnols(board)
end

def check_rows
  board.length.times do |row|
    board.length.times do |col|
      return false unless board[row][col] && (board[row][col] == board[row][0])
    end
  end
end

def check_cols
  board.length.times do |col|
    board.length.times do |row|
      return false unless board[row][col] && (board[row][col] == board[0][col])
    end
  end
end

def check_diagnols
  length = board.length
  length.times do |idx|
    return false unless board[idx][idx] && (board[idx][idx] == board[0][0])
  end
  
  length.times do |idx|
    return false unless board[idx][length-idx] && (board[idx][length - idx] == board[0][idx])
  end
end
