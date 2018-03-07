# Add one to an array of digits
[1,2,0] => [1,2,1]
[9,9] => [1,0,0]

# this is generecised to work for any addition
def add_to_digits_array(array, number, index = 0)
  reverse_index = -index - 1
  value = array[reverse_index]
  if(!value)
    return number.to_s.split('').map(&:to_i).concat(array)
  end
  
  if(value + number < 10)
    array[reverse_index] += (number)
    return array
  end

  array[reverse_index] = (value + number) % 10
  number = (value + number) / 10
  add_to_digits_array(array, number, index += 1)
end

add_to_digits_array([9,9], 1100)
