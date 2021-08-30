def bottom_up_fibo(n)
  if !(n.is_a? Integer) || n < 0
    raise "The program needs whole numbers nothing apart from it."
  end

  if n == 0
    return 0
  end

  if n == 1 || n == 2
    return 1
  end

  bottom_up = Array.new(n)
  bottom_up[0] = 1
  bottom_up[1] = 1

  # Here we actually memoize the previous results in the `bottom_up` array to avoid computations
  for i in 2 ... bottom_up.size
    bottom_up[i] = bottom_up[i - 1] + bottom_up[i - 2]
  end
  return bottom_up[n - 1]
end

puts bottom_up_fibo(3)
