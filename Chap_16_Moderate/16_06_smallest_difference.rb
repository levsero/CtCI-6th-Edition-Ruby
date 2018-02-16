def smallest_dif(array1, array2)
  array1, array2 = array1.sort, array2.sort
  idx1, idx2 = 0, 0
  smallest_dif = Float::Infinity
  
  while array1[idx1] && array2[idx2]
    if (array1[idx1] - array2[idx2]).abs < smallest_dif
      smallest_dif = (array1[idx1] - array2[idx2]).abs
    end
    
    if array1[idx1] < array2[idx2]
      idx1 += 1
    else
      idx2 += 1
    end
  end
end
