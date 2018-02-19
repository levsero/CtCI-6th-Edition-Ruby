def magic_index(arr, index = 0)
  return false if arr.empty?
  
  mid = (arr.length / 2).floor
  return true if arr[mid] == index

  if arr[mid] < index
    magic_index(arr.drop(mid + 1), index)
  else 
    magic_index(arr.take(mid), 0)
  end
end
magic_index([-4,-2,1,3])