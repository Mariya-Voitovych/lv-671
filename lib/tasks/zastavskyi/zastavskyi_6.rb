# frozen_string_literal: true

# Your task, is to create NxN multiplication table, of size provided in parameter.
# for example, when given size is 3:
# 1 2 3
# 2 4 6
# 3 6 9
# for given example, the return value should be: [[1,2,3],[2,4,6],[3,6,9]]

def multiplication_table(size)
  res = []
  1.upto(size) do |i|
    res << (1..size).map { |n| n * i }
  end
  res
end

n = 6
puts "Multiplication table with size #{n}"
table = multiplication_table(n)
table.each { |row| p row }
