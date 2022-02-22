# frozen_string_literal: true

def solve(m)
  a = m
  b = -(2 * m + 1)
  c = m

  discr = b ** 2 - 4 * a * c
  (-b - Math.sqrt(discr)) / (2 * a)
end

p solve(2.0) 