# [a b c d e f g h i j k l m n o p q r s t u v w x y z]

def rotated_strings(string_arr)
  value_hash = Hash.new{ |k, v| k[v] = [] }
  string_arr.each do |string|
    value_hash[int_key_for(string)] << string
  end
  value_hash.select {|k,v| v.length > 1}.values
end

def int_key_for(string)
  char_values = char_values_for(string[0])
  string.chars.map{ |char|
    p char
    p char_values[char]
  }.join('-')
end

def char_values_for(char)
  letters = ('a'..'z').to_a
  start = letters.index(char)
  rotated_letters = letters.drop(start).concat(letters.take(start))
  nums = (0..25).to_a
  rotated_letters.zip(nums).to_h
end

rotated_strings(['ab', 'xy', 's', 'b','yx','gf'])
int_key_for('car')
