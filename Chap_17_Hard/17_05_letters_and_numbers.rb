# [1,2,2,1,1,1,2,2,2,1,2,1,2,2,1,2,1,2]
# Big O n2

def letters_and_numbers(array)
  longest = 0
  indexes = []

  array.length.times do |start_idx|
    (start_idx + 1...array.length).each do |end_idx|
      if(is_equal_number(array[start_idx..end_idx]))
        if end_idx - start_idx > longest
          longest = end_idx - start_idx
          indexes = [start_idx, end_idx]
        end
      end
    end
  end
  indexes
end

def is_equal_number(array)
  count = 0
  array.each do |val|
    count += val.is_a?(String) ? 1 : -1
  end
  count == 0
end

letters_and_numbers [2,'a',2,'b']

def letters_and_numbers_optimal(array)
  deltas = compute_deltas(array)
  p deltas
  longest = 0
  hash = {0 => -1}
  indexes = []
  deltas.each_with_index do |delta, idx|
    if hash[delta]
      length = idx - hash[delta]
      if length > longest
        longest = length
        indexes = [hash[delta] + 1, idx]
      end
    else 
      hash[delta] = idx
    end
  end
  indexes
end
def compute_deltas(array)
  deltas = []
  count = 0
  array.each do |val|
    deltas << (val.is_a?(String) ? count-=1 : count += 1)
  end 
  deltas
end

letters_and_numbers_optimal [2,'a',2,'b']