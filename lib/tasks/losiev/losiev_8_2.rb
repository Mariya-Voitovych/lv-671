puts "This program converts miles per gallon to kilometers per liter and \
rounds off the result to two decimal points"

def converter(mpg)
  coef = 4.54609188 / 1.609344
  (mpg / coef).round(2)
end

puts converter(5)
