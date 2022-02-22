def zeros(num)
  zeros = 0
  while num.positive?
    num /= 5
    zeros += num
  end
  zeros
end

if $PROGRAM_NAME == __FILE__
  puts "This program calculates the number of trailing zeros in a factorial of a given number."
  p zeros(5)
  p zeros(25)
end