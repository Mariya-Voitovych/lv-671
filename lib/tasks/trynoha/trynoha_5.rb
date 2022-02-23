def perimeter(num)
  a, b, sum = 0, 1, 4

  return a if num.zero?

  num.times do
    c = a + b
    a, b = b, c
    sum += 4 * b
  end
  puts "For rectangle with #{num + 1} squares, total perimeter equals #{sum}"
  sum
end

if $PROGRAM_NAME == __FILE__
  puts "This program calculates perimeter of all the squares in a rectangle.
Square lengths correspond to the Fibonacci number: 1 - 1; 2 - 1; 3 - 2; 4 - 3; 5 - 5; 6 - 8;..."
  perimeter(3)
  perimeter(5)
  perimeter(123)
end
