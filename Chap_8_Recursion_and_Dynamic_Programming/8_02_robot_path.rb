def robot_path(maze, x, y)
  return [[x,y]] if maze[x, y].end
  return false if maze.out_of_bounds?(x, y) || !maze[x, y]
  
  path = robot_path(maze, x + 1, y, path) || robot_path(maze, x, y + 1, path)
  return false if !path
  return path << [x,y]
end

class Maze
  def initialize(size)
    @size = size
    @map = initialize_board(size)
    seed_bad_squares
  end
  
  def initialize_board(size)
    map = Array.new(size) {|col| col = Array.new(size)}
    map
  end
  
  def seed_bad_squares
  end
  
  def [](x, y)
    @map[x][y]
  end
  
  def out_of_bounds?(x,y)
    x > @size - 1 || y > @size - 1
  end
end