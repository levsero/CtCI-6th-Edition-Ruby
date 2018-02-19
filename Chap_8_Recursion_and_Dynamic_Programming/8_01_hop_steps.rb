def hop_steps(n, memo = {})
  return 0 if n < 0
  return 1 if n == 0
  
  memo[n] = hop_steps(n-1) + hop_steps(n-2) + hop_steps(n-3)
end