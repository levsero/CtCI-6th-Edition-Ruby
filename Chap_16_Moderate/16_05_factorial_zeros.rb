def factorial_zeros(num)
  i = 5
  count = 0
  
  while num / i > 0
    count += num / i
    i *= 5
  end
  
  count
end