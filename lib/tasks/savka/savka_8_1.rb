# frozen_string_literal: true

def square_or_square_root(arr)
  arr.map { |num| Math.sqrt(num) % 1 == 0 ? Math.sqrt(num) : num ** 2 }
end

if $PROGRAM_NAME == __FILE__
  puts "This program returns square root if the number has it, otherwise square the number.\n\n"
p square_or_square_root([4, 3, 9, 7, 2, 1])
end