class Node
  attr_accessor :value, :next_node
  
  def initialize(value: nil, next_node: nil)
    @value = value
    @next_node = next_node
  end
  
  def length
    length = 1
    n = next_node
    while n
      length += 1
      n = n.next_node
    end
    length
  end
end
