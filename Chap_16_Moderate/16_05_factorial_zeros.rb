def factorial_zeros(num)
  count = 0
  i = 0
  while i <= num
    count += factors_of5(i)
    i += 5
  end
  count
end

def factors_of5(num)
  count = 0
  while num % 5 == 0 && num > 0
    count += 1 if num % 5
    num /= 5
  end
  count
end

def factorial_zeros_v2(num)
  count = 0
  i = 5
  while num / i > 0
    count += num / i
    i *= 5
  end
  count
end
