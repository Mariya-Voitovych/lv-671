puts "This program calculates perimeter of all the squares in a rectangle.
Square lengths correspond to the Fibonacci number: 1 - 1; 2 - 1; 3 - 2; 4 - 3; 5 - 5; 6 - 8;..."

def perimeter(n)
  a, b, sum = 0, 1, 4;
  return a if n == 0
  for i in (2..n+1)
      c = a + b
      a, b = b, c
      sum += 4 * b
  end
  puts "For rectangle with #{n + 1} squares, total perimeter equals #{sum}"
  sum
end


perimeter(3)
perimeter(5)
perimeter(123123)
