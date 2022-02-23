def two_decimal_places(num)
  raise NotImplementedError unless num.is_a? Float

  res = num.round(2)
  puts "Passed number #{num} is rounded to #{res}."
  res
end

if $PROGRAM_NAME == __FILE__
  puts "This program rounds float number to 2 decimal places.\n\n"
two_decimal_places(23.2323)
two_decimal_places(-2.096321)
two_decimal_places(5.44445)
end