if $PROGRAM_NAME == __FILE__
puts "This program return an array, where the first element is the count of positives numbers
and the second element is sum of negative numbers \n\n"
end

def count_positives_sum_negatives(arr)
  return [] if [[], nil].include?(arr)

  new_arr = [0, 0]
  arr.each do |i|
    new_arr[0] += 1 if i.positive?
    new_arr[1] += i if i.negative?
  end
  new_arr
end
