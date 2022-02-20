puts "This function calculate a sum of squares of element in some line of Pascal triangle.\n\n"

def easyline_calc(n)
  if n == 0
    return [1]
  end

  previous = easyline_calc(n - 1)

  calculation_result = []
  (previous.length - 1).times do |i|
    calculation_result << (previous[i] + previous[i + 1])
  end

  return [1, calculation_result, 1].flatten
end

def easyline(row_num)
  easyline_calc(row_num).map { |el| el = el**2 }.sum
end

puts easyline(13)
