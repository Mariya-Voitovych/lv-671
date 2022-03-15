# frozen_string_literal: true

class Strng
  def initialize(strng)
    @numbers = strng.split
    @weigth = weigth
    @distances = find_dist
  end

  def closest
    return [] if @numbers.empty?

    if find_min.length == 1                                    # the first condition is satisfied by one pair of numbers
      form_answer(find_min)
    elsif smallest_weigth(find_min).length == 1                # the second condition is satisfied by one pair of numbers
      form_answer(smallest_weigth(find_min))
    else
      form_answer(smallest_index(smallest_weigth(find_min)))
    end
  end

  private

  # returns an array of weigths number
  def weigth
    weigth = []
    (0..@numbers.length - 1).each do |i|
      sum = 0
      @numbers[i].chars.each { |number| sum += number.to_i }
      weigth.push(sum)
    end
    weigth
  end

  # returns hash where keys are indices two numbers and value is distance between them
  def find_dist
    dist = {}
    (0..@weigth.length - 1).each do |i|
      (i + 1..@weigth.length - 1).each do |j|
        dist[[i, j]] = (@weigth[i] - @weigth[j]).abs
      end
    end
    dist
  end

  # finds all numbers witn min distance
  def find_min
    min = @distances.values.min
    @distances.select { |_key, value| value == min }
  end

  # finds all numbers witn min sum of weigths
  def smallest_weigth(hash)
    weigths = []
    hash.each_key { |key| weigths.push(@weigth[key[0]] + @weigth[key[1]]) }
    hash.select { |key, _value| @weigth[key[0]] + @weigth[key[1]] == weigths.min }
  end

  # finds two numbers witn the smallest index
  def smallest_index(hash)
    index = []
    hash.each_key { |key| index.push(key[0]) }
    hash.select { |key, _value| key[0] == index.min }
  end

  # forms the answer according to requirements
  def form_answer(hash)
    answer = []
    (0..1).each do |i|
      index = hash.keys.first[i]
      answer.push([@weigth[index], index, @numbers[index].to_i])
    end
    answer.sort_by { |arr| arr[0] }
  end
end

def closest(strng)
  Strng.new(strng).closest
end

if $PROGRAM_NAME == __FILE__
  puts "This program calculates weight for each number in a string of n positive
numbers (n = 0 or n >= 2) and then finds two numbers of strng that have:
- the smallest difference of weights ie that are the closest
- with the smallest weights
- with the smallest indices (or ranks, numbered from 0) in strng
Output is an array of two arrays, each subarray in the following format:
[number-weight, index in strng of the corresponding number, original corresponding number in strng]"
  strng = '456899 50 11992 176 272293 163 389128 96 290193 85 52'
  puts "#{strng} => #{closest(strng)}"
end
