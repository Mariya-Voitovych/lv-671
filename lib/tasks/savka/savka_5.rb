# frozen_string_literal: true

def solve(m)
  a = m
  b = -(2 * m + 1)
  c = m

  discr = b ** 2 - 4 * a * c
  (-b - Math.sqrt(discr)) / (2 * a)
end

if $PROGRAM_NAME == __FILE__
  puts "Given the sequence U(n, x) = x + 2x**2 + 3x**3 + .. + nx**n where x is a real number and n a positive integer. This sequence
  is a power series. When we solve this we get a quadratic equation which we can solve with the quadratic formula for the roots of the general quadratic equation.\n\n"
  p solve(2.0) 
end