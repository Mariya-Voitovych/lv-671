def divisible_by(numbers, divisor)
  numbers.select { |number| number % divisor == 0 }
end

if $PROGRAM_NAME == __FILE__
  puts "This program returns all numbers which are 
divisible by the given divisor. First argument is an array of numbers and the second is the divisor."
puts "([1, 2, 3, 4, 5, 6], 2) => #{divisible_by([1, 2, 3, 4, 5, 6], 2)}"
puts "([4,5,1,7],3) => #{divisible_by([4,5,1,7],3)}"
end