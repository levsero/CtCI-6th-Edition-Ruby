require 'Set'

def remove_dups(node)
  set = Set.new
  prev = nil

  while node != nil do
    if set.include?(node.value)
      prev.next_node = node.next_node
    else
      set << node.value
    end
    prev, node = node, node.next_node
  end
end
