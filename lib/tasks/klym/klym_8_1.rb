def litres(time)
  (time * 0.5).floor
end

if $PROGRAM_NAME == __FILE__
  puts "This program returns water comsumption per hour rounded to the smallest number"
puts "litres(5) =>#{litres(5)}"
puts "litres(12) =>#{litres(12)}"
end