# frozen_string_literal: true

# You are given an odd-length array of integers, in which all of them are the same, except for one single number.
# Complete the method which accepts such an array, and returns that single different number.
# The input array will always be valid! (odd-length >= 3)
# Examples
# [1, 1, 2] ==> 2
# [17, 17, 3, 17, 17, 17, 17] ==> 3

def stray(numbers)
  numbers.each { |x| return x if numbers.count(x) == 1 }
  numbers
end

if $PROGRAM_NAME == __FILE__
  sequences = [
    [1, 1, 1, 3, 1],
    [0, 0, 1, 0, 0]
  ]
  sequences.each do |sequence|
    puts "Sequence: #{sequence}\nDifferent element: #{stray(sequence)}"
  end
end
