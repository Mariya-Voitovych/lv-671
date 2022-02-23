require 'bigdecimal'
require 'prime'

def am_I_Wilson(p)
  if p.prime?
    x = BigDecimal(factorial(p - 1) + 1) / (p.to_f * p)
    res = whole?(x)
  else
    res = false
  end
  puts "Passed number #{p} is" << (res ? ' ' : ' not ') << 'Wilson prime.'
  res
end

def whole?(num)
  (num - num.floor).zero?
end

def factorial(num)
  return 1 if num <= 1

  num * factorial(num - 1)
end

if $PROGRAM_NAME == __FILE__
  puts "This program checks if the passed number is Wilson prime.
Wilson prime means that the number should be prime and \
result of expression ((n-1)! + 1) / (n * n)) should be whole number.\n\n"
am_I_Wilson(5)
am_I_Wilson(8)
am_I_Wilson(19)
end