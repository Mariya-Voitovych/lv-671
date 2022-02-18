def locker_run(lockers)
  result = []
  i = 1
  loop do
    result.push(i * i)
    i += 1
    break if i * i >= lockers
  end
  result
end
