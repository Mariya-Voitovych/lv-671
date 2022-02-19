puts "This program calculates weight for each number in a string of n positive 
numbers (n = 0 or n >= 2) and then finds two numbers of strng that have:
- the smallest difference of weights ie that are the closest
- with the smallest weights
- with the smallest indices (or ranks, numbered from 0) in strng
Output is an array of two arrays, each subarray in the following format:
[number-weight, index in strng of the corresponding number, original corresponding number in strng]"

def closest(strng)
  return [] if strng.empty?

  numbers = strng.split
  weigth = weigth(numbers)
  distances = find_dist(weigth)
  min_distance = find_min(distances)
  if min_distance.length == 1                                            #the first condition is satisfied by one pair of numbers
    form_answer(min_distance, numbers)
  elsif smallest_weigth(min_distance, weigth).length == 1                #the second condition is satisfied by one pair of numbers
    form_answer(smallest_weigth(min_distance, weigth), numbers)
  else
    form_answer(smallest_index(smallest_weigth(min_distance, weigth)), numbers)
  end
end

#returns an array of weigths number
def weigth(numbers)
  weigth = []
  (0..numbers.length - 1).each do |i|
    sum = 0
    numbers[i].chars.each { |number| sum += number.to_i }
    weigth.push(sum)
  end
  weigth
end

#returns hash where keys are indices two numbers and value is distance between them  
def find_dist(array)
  dist = {}
  (0..array.length - 1).each do |i|
    (i + 1..array.length - 1).each do |j|
      dist[[i, j]] = (array[i] - array[j]).abs
    end
  end
  dist
end

#finds all numbers witn min distance
def find_min(hash)
  min = hash.values.min
  hash.select { |_key, value| value == min }
end

#finds all numbers witn min sum of weigths
def smallest_weigth(hash, weigth)
  weigths = []
  hash.each_key { |key| weigths.push(weigth[key[0]] + weigth[key[1]]) }
  hash.select { |key, _value| weigth[key[0]] + weigth[key[1]] == weigths.min }
end

#finds two numbers witn the smallest index
def smallest_index(hash)
  index = []
  hash.keys.each { |key| index.push(key[0]) }
  hash.select { |key, _value| key[0] == index.min }
end

#forms the answer according to requirements 
def form_answer(hash, numbers)
  answer = []
  (0..1).each do |i|
    index = hash.keys.first[i]
    answer.push([weigth(numbers)[index], index, numbers[index].to_i])
  end
  answer.sort_by { |arr| arr[0] }
end

strng = "456899 50 11992 176 272293 163 389128 96 290193 85 52"
puts "#{strng} => #{closest(strng)}"
