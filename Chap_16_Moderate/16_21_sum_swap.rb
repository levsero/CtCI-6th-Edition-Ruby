def sum_swap(a,b)
  diff = (a.sum - b.sum) / 2
  a,b = diff >= 0 ? [a,b] : [b,a]
  diff = diff.abs
  diff_hash = {}
  a.each do |num|
    diff_hash[num]= num - diff
  end
  b.each do |num|
    return [num, num + diff] if diff_hash[num + diff]
  end
  false
end

sum_swap([4,1,2,1,1,2],[3,6,3,3])