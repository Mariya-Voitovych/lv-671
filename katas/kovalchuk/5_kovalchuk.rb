require 'prime'
def gap(g, m, n)
  return nil if n > 1_100_000 || n <= m || g < 2 || m < 2

  result = []
  first = 0
  second = 0
  (m..n).to_a.each do |i|
    second = i if i.prime?
    if (first - second).abs == g
      result << first
      result << second
      break
    else
      first = second
    end
  end
  first != second ? result : nil
end
