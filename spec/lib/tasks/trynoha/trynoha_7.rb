
def new_avg(arr, newavg)
  return newavg if arr.empty?
  donation = newavg * (arr.size + 1) - arr.reduce {|sum, x| sum + x}
  raise "Error" if donation < 0
  donation.ceil
end
