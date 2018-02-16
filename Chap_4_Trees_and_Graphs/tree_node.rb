class TreeNode
  attr_accessor :value, :right, :left
  
  def initialize(value: nil, right: nil, left: nil)
    @value = value
    @right = right
    @left = left
  end
end

# p 103

def visit(node)
  puts node.value
end

def post_order_traversal(node)
  return unless node
  post_order_traversal(node.left)
  post_order_traversal(node.right)
  visit(node.value)
end

def pre_order_traversal(node)
  return unless node
  visit(node.value)
  pre_order_traversal(node.left)
  pre_order_traversal(node.right)
end

def in_order_traversal(node)
  return unless node
  in_order_traversal(node.left)
  visit(node.value)
  in_order_traversal(node.right)
end

# min heap p 104
# log n insertion and extraction
class MinHeap
  def insert(value)
    last = find_next_nil
    last = value
    while last < last.head
      last = swap_up(last)
    end
  end
  
  def extract(value)
    node = search(value)
    while node.left
      smaller_child = node.left < (node.right || node.left + 1) ? node.left : node.right
      node = swap_down(last, last.head)
    end
    node
  end
end
