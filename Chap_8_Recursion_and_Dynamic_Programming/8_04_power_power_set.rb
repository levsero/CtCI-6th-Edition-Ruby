def power_set(set)
  return [[]] if set.empty?
  prev_sets = power_set(set.drop(1))
  add_to_all!(prev_sets, set[0])
end

def add_to_all!(sets, val)
  arr = []
  sets.each do |set|
    arr << (set.dup << val)
  end
  sets.concat(arr)
end