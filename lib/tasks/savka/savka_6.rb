# frozen_string_literal: true

def find_nb(m)
  n = 0
  while m > 0
    n += 1
    m -= n**3
  end
  m != 0 ? -1 : n
end

if $PROGRAM_NAME == __FILE__
  puts "This program constructs a building which will be a pile of n cubes. 
The parameter m is an integer and you have to return the integer n such as n^3 + (n-1)^3 + ... + 1^3 = m.\n\n"
p find_nb(4183059834009)
end