

def converter(mpg)
  coef = 4.54609188 / 1.609344
  (mpg / coef).round(2)
end

if $PROGRAM_NAME == __FILE__
  puts "This program converts miles per gallon to kilometers per liter and \
rounds off the result to two decimal points"
  puts converter(5)
end