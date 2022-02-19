def perimeter(n)
  a, b, sum = 0, 1, 4;
  return a if n == 0
  for i in (2..n+1)
    c = a + b
    a, b = b, c
    sum += 4 * b
  end
  sum
end


puts perimeter(7)
