[[0,5],[3,7],[2,6],[1,8],[4,10]]

[[0, 5], [1, 8], [2, 6], [3, 7], [4, 10]]

def build_pyramid(performers, pyramid = [], index = 0)
  sorted_by_height = performers.sort_by{ |performer| performer[0] }
  return pyramid if index > pyramid.length
  
  best_without = build_pyramid(performers, pyramid.dupe, longest, index + 1)
  if can_add_performer?(pyramid, performer)
    duped = pyramid.dupe
    duped << performer
    best_with = build_pyramid(performers, duped, longest, index + 1)
  end
  
  best_with.length > best_without.length ? best_with : best_without
end
