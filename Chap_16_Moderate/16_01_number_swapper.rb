def number_swapper(array)
  array[0] = array[0] + array[1]
  array[1] = array[0] - array[1]
  array[0] = array[0] - array[1]
end
