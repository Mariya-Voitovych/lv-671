puts "This program returns water comsumption per hour rounded to the smallest number"

def litres(time)
  (time * 0.5).floor
end

puts "litres(5) =>#{litres(5)}"
puts "litres(12) =>#{litres(12)}"