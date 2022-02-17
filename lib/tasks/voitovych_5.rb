def closest(strng)
  return [] if strng.empty?

  numbers = strng.split
  weigth = weigth(numbers)
  distances = find_dist(weigth)
  min_distance = find_min(distances)
  if min_distance.length == 1
    form_answer(min_distance, numbers)
  elsif smallest_weigth(min_distance, weigth).length == 1
    form_answer(smallest_weigth(min_distance, weigth), numbers)
  else
    form_answer(smallest_index(smallest_weigth(min_distance, weigth)), numbers)
  end
end

def weigth(numbers)
  weigth = []
  (0..numbers.length - 1).each do |i|
    sum = 0
    numbers[i].chars.each { |number| sum += number.to_i }
    weigth.push(sum)
  end
  weigth
end

def find_dist(array)
  dist = {}
  (0..array.length - 1).each do |i|
    (i + 1..array.length - 1).each do |j|
      dist[[i, j]] = (array[i] - array[j]).abs
    end
  end
  dist
end

def find_min(hash)
  min = hash.values.min
  hash.select { |_key, value| value == min }
end

def form_answer(hash, numbers)
  answer = []
  (0..1).each do |i|
    index = hash.keys.first[i]
    answer.push([weigth(numbers)[index], index, numbers[index].to_i])
  end
  answer.sort_by { |arr| arr[0] }
end

def smallest_weigth(hash, weigth)
  weigths = []
  hash.each_key { |key| weigths.push(weigth[key[0]] + weigth[key[1]]) }
  hash.select { |key, _value| weigth[key[0]] + weigth[key[1]] == weigths.min }
end

def smallest_index(hash)
  index = []
  hash.keys.each { |key| index.push(key[0]) }
  hash.select { |key, _value| key[0] == index.min }
end

closest('12 34 67 31')
