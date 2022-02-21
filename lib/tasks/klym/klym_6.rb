puts "This program returns better approximation of f(x) in the neighborhood of 0"

def f(x)
  x.fdiv(1 + Math.sqrt(1 + x))
end

puts "f(2.6e-08) =>#{f(2.6e-08)}"


