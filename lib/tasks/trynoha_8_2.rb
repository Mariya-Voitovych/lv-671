puts "This program rounds float number to 2 decimal places.\n\n"

def two_decimal_places(n)
  raise NotImplementedError.new unless n.is_a? Float
  res = n.round(2)
  puts "Passed number #{n} is rounded to #{res}."
  res
end


two_decimal_places(23.2323)
two_decimal_places(-2.096321)
two_decimal_places(5.44445)