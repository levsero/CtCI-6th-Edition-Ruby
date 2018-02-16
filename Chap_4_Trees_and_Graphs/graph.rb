class Graph
  attr_accessor :nodes
end

class Node
  attr_reader :value
  attr_accessor :children # adjacent nodes
end
