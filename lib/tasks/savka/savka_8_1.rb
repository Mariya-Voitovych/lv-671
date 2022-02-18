puts "This program returns square root if the number has it, otherwise square the number.\n\n"

def square_or_square_root(arr)
  arr.map { |num| Math.sqrt(num) % 1 == 0 ? Math.sqrt(num) : num ** 2 }
end

square_or_square_root([4, 3, 9, 7, 2, 1])
