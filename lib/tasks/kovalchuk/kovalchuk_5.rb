# frozen_string_literal: true

require 'prime'
def gap(gap_size, start_range, end_range)
  return nil if end_range > 1_100_000 || end_range <= start_range || gap_size < 2 || start_range < 2

  result = []
  first = 0
  second = 0
  (start_range..end_range).to_a.each do |i|
    second = i if i.prime?
    if (first - second).abs == gap_size
      result << first
      result << second
      break
    else
      first = second
    end
  end
  first != second ? result : nil
end

if $PROGRAM_NAME == __FILE__
  puts "This program return the first pair of two prime numbers
  spaced with a gap of gap_size between the limits start_range, end_range.\n\n"
  puts gap(2, 100, 110).to_s
  puts gap(8, 300, 400).to_s
end
