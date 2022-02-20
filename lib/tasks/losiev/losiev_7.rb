puts "This program calculates the result of test."

def check_exam(arr1, arr2)
  result = 0
  arr1.each_with_index do |answer, index|
    points = if arr2[index].eql?(answer)
               4
             else
               (arr2[index].empty? ? 0 : -1)
             end
    result += points
  end
  result >= 0 ? result : 0
end

puts check_exam(%w[a a b b], %w[a c b d])
