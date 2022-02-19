def two_decimal_places(n)
  raise NotImplementedError.new unless n.is_a? Float
  n.round(2)
end

arr = [1.2212313, 3.3455, 3.2, -3.4390, 0.10009]
arr.each {|x| puts two_decimal_places(x) }

# Each number should be formatted that it is rounded to two decimal places. You don't need to check whether the input is a valid number because only valid numbers are used in the tests.
# Example:
#   5.5589 is rounded 5.56
# 3.3424 is rounded 3.34
#https://www.codewars.com/kata/formatting-decimal-places-number-0
