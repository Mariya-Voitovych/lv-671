puts "This program rounds float number to 2 decimal places.\n\n"

def two_decimal_places(num)
  raise NotImplementedError unless num.is_a? Float

  res = num.round(2)
  puts "Passed number #{num} is rounded to #{res}."
  res
end

two_decimal_places(23.2323)
