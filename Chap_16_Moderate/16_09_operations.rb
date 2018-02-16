def negate(int)
  neg = 0
  sign = int < 0 ? 1 : -1
  while int != 0
    neg += sign
    int += sign
  end
end

def minus(int1, int2)
  int1 + negate(int2)
end

def abs(int)
  return int if int > 0
  return negate(int)
end

def multiply(int1, int2)
  product = 0
  abs(int1).times do
    product += int2
  end
  int1 > 0 ? product : negate(total)
end

# This is the answer in the book but is incorrect (inaccurate) for negative numbers in ruby
# which always floors negative division eg. -5/2 should be -3 not -1 as this will return

def divide(int1, int2)
  raise if int2 == 0
  
  abs_a = abs(int1)
  abs_b = abs(int2)
  
  result = 0
  product = 0
  while (product + abs_b) < abs_a
    product += abs_b
    result += 1
  end
  
  if((int1 > 0 && int2 > 0) || int1 < 0 && int2 < 0)
    return result
  end
  
  negate(result)
end
