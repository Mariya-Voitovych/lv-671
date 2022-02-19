require 'bigdecimal'

def am_I_Wilson(p)
  if is_prime(p)
    x = BigDecimal(factorial(p - 1) + 1)/(p.to_f * p)
    is_whole(x) ? true : false
  else
    false
  end
end

def is_prime(p)
  return false if (p <= 1 or !is_whole(p))
  sqrt_p = Math.sqrt(p.to_f).floor
  while sqrt_p > 1 do
    return false if p % sqrt_p == 0
    sqrt_p -= 1
  end
  true
end

def is_whole(x)
  (x - x.floor) == 0 ? true : false
end

def factorial(n)
  return 1 if (n <= 1)
  return n * factorial(n - 1)
end

(1..6).each { |x| puts am_I_Wilson(x) }
puts am_I_Wilson(563)

# Wilson primes satisfy the following condition. Let P represent a prime number.
#   Then ((P-1)! + 1) / (P * P) should give a whole number.
#   Your task is to create a function that returns true if the given number is a Wilson prime.
# https://www.codewars.com/kata/wilson-primes
