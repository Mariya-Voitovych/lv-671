def count_positives_sum_negatives(arr)
  return [] if [[], nil].include?(arr)

  new_arr = [0, 0]
  arr.each do |i|
    new_arr[0] += 1 if i.positive?
    new_arr[1] += i if i.negative?
  end
  new_arr
end
