puts "This program returns an array containing repetitions of the number argument.\n\n"

def replicate(times, number)
  arr = []
  if times < 1
    arr
  else
    arr.append(number)
    arr.concat(replicate(times - 1, number))
  end
end

p replicate(5, 3)