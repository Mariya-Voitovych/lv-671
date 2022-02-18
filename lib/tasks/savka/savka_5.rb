def solve(m)
  a = m
  b = -(2 * m + 1)
  c = m

  discr = b ** 2 - 4 * a * c
  (-b - Math.sqrt(discr)) / (2 * a)
end

solve(2.0) 