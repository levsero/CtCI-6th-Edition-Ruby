# lines = [[[x,y],[x,y]], [[x,y],[x,y]]]
def intersect?(lines)
  line1, line2 == Line.new(lines[0]), Line.new(lines[1])
  line1, line2 = line2, line1 if line1.start_x > line2.start_x
  
  # check x coord is in between
  return unless line_2.start_x < line_y.end_x
  
  # check y coord
  return unless line_1.y_range.include?(line_2.start_y) || line_1.y_range.include?(line_2.end_y)
  
  x_intercept = (line_2.y_intercept - line_1.y_intercept) / (line_1.slope - line_2.slope)
  y_intercept = x_intercept * line_1.slope + line_1.y_intercept

  if line_1.slope == line_2.slope
    return true if line_2.y_intercept == line_1.y_intercept
  end  

  if line_1.y_range.include?(y_intercept) && line_1.x_range.include?(x_intercept)
      && line_2.y_range.include?(y_intercept) && line_2.x_range.include?(x_intercept)
    return true
  end

  false
end
