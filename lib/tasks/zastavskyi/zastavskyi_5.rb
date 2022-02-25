# frozen_string_literal: true

# If you have not ever heard the term Arithmetic Progression, refer to: http://www.codewars.com/kata/find-the-missing-term-in-an-arithmetic-progression/python
# And here is an unordered version. Try if you can survive lists of MASSIVE numbers (which means time limit should be
#   considered). :D
# Note: Don't be afraid that the minimum or the maximum element in the list is missing, e.g. [4, 6, 3, 5, 2] is missing
#   1 or 7, but this case is excluded from the kata.
# Example:
# find([3, 9, 1, 11, 13, 5]) # => 7

def find(seq)
  seq.sort!
  return [] if seq.size < 2

  d = (seq.max - seq.min).fdiv(seq.size)
  i = 0
  i += 1 while seq[i + 1] - seq[i] == d
  seq[i] + d
end

