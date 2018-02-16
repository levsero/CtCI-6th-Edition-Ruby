def diving_board(k, shorter, longer)
  lengths = Set.new
  get_all_lengths()
end

def get_all_lengths(remaining_boards, current_length, shorter, longer, lengths, memo={})
  
  if remaining_boards == 0
    lengths << current_length
    return
  end
  
  get_all_lengths(remaining_boards-1, current_length + shorter, shorter, longer)
  get_all_lengths(remaining_boards-1, current_length + longer, shorter, longer)
  memo["#{remaining_boards}#{current_length}"] = 
end

diving_board(3, 1, 2) => [3,4,5,6]
