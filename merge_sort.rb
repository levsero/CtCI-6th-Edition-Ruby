

def merge_sort(array)
  return array if array.length < 2 
  mid = array.length/2
  left = merge_sort(array.take(mid))
  right = merge_sort(array.drop(mid))
  merge(left,right)
end

def merge(left, right)
  sorted_array = []
  
  while left.any? && right.any?
    lower = left[0] < right[0] ? left : right
    sorted_array << lower.shift
  end 
  sorted_array.concat(left).concat(right)
end

a = [10,1,3,5,7,6,4]
merge_sort(a)