def starting_mark(height)
  rate = (10.67 - 9.45).fdiv(1.83 - 1.52)
  (((rate * height) + 10.67 - (rate * 1.83)) * 100).round.fdiv(100)
end

if $PROGRAM_NAME == __FILE__
  puts "This program returns the best starting_mark depending on height and based on same rate and offset"
puts "starting_mark(1.71) =>#{starting_mark(1.71)}"
puts "starting_mark(1.98) =>#{starting_mark(1.98)}"
end