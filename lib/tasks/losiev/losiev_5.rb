puts "This program calculates the number of trailing zeros in a factorial of a given number."

def zeros(num)
  zeros = 0
  while num.positive?
    num /= 5
    zeros += num
  end
  zeros
end

p zeros(5)
p zeros(25)