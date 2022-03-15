# frozen_string_literal: true

def count_positives_sum_negatives(arr)
  return [] if [[], nil].include?(arr)

  new_arr = [0, 0]
  arr.each do |i|
    new_arr[0] += 1 if i.positive?
    new_arr[1] += i if i.negative?
  end
  new_arr
end

if $PROGRAM_NAME == __FILE__
  puts "This program return an array, where the first element is the count of positives numbers
  and the second element is sum of negative numbers \n\n"
  puts count_positives_sum_negatives([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]).to_s
  puts count_positives_sum_negatives([0, 2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14]).to_s
end
