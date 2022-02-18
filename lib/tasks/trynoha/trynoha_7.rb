puts "This program calculates the expected donation (rounded up to the next integer) \
that will permit to reach the new average.\n\n"

def new_avg(arr, newavg)
  return newavg if arr.empty?

  donation = newavg * (arr.size + 1) - arr.reduce { |sum, x| sum + x }
  raise 'Error' if donation.negative?

  don = donation.ceil
  puts "To reach average #{newavg} donations array #{arr} should be appended by #{don}."
  don
end

new_avg([14, 30, 5, 7, 9, 11, 16], 90)
new_avg([1, 2, 3], 10)
new_avg([100, 100, 100], 200)
