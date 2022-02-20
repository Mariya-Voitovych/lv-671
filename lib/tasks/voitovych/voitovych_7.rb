puts "This program returns the sum of series 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +... upto nth term(parameter)"

def series_sum(n)
  sum = 0.00
  i = 1
  while i < n + 1
    sum += 1 / (1 + 3 * (i - 1)).to_f
    i += 1
  end
  '%.2f' % sum
end

puts "2 => #{series_sum(2)}"
puts "10 => #{series_sum(10)}"