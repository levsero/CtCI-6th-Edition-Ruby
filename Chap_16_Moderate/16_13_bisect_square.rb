def bisect_square(square_1, square_2)
  slope = square_1.center[0] - square_2.center[0] / square_1.center[1] square_2.center[1]
  slope_x_intercept = square_1.center[0] - (square_1.center[0] / slope)
  [slope, y_intercept]
end

class Square
  // [int: x, int: y], [int: x, int: y]
  def initialize(top_left, bottom_right)
    @top_left = top_left 
    @bottom_right = bottom_right 
  end
  
  def center
    x = x_start - x_end.to_f / 2 
    y = y_start - y_end.to_f / 2 
  end
  
  def x_start
    @top_left[0]
  end
  
  def x_end
    @bottom_right[0]
  end
  
  def y_start
    @bottom_right[1]
  end
  
  def y_end
    @top_left[1]
  end
end