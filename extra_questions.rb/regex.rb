* => wildcard char
. => 1+

('AAA5B','A*.B') => true
('23432AAB', '*.A') => false
('23432AA', '*.A') => true
('AAB', 'A.B') => true

def regex(string, pattern)
  return true if string.empty? && pattern.empty?
  return false if string.empty? || pattern.empty?
  
  if(pattern[1] != '.')
    return false if(string[0] != pattern[0] && pattern[0] != '*')
    return regex(string.slice(1..-1), pattern.slice(1..-1))
  end
  
  return false if(string[0] != pattern[0] && pattern[0] != '*')
  return regex(string.slice(1..-1), pattern.slice(2..-1)) || regex(string.slice(1..-1), pattern)
end

regex('AAB', 'A.B')
regex('AAA5B','A*.B')
regex('23432AAB', '*.A') => false
regex('23432AA', '*.A') => true
regex('AAB', 'A.B') => true
