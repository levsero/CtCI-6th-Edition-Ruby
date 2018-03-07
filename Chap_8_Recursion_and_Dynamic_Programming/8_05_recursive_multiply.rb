def recursive_multiply(smaller, larger)
  # smaller has to be a positive number
  return 0 if smaller == 0
  idx = 1
  val = larger
  while idx + idx < smaller
    val += val
    idx += idx
  end
  return val if idx == smaller
  val + recursive_multiply(smaller - idx, larger)
end

recursive_multiply(4,7)