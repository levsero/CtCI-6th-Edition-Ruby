require 'set'
def diving_board(planks, shorter, longer)
  return Set.new([0]) if planks == 0
  
  lengths = Set.new()
  prev_lengths = diving_board(planks - 1, shorter, longer)
  prev_lengths.each do |length|
    lengths << length + shorter
    lengths << length + longer
  end
  lengths
end