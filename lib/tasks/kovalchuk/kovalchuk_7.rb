# frozen_string_literal: true

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

if $PROGRAM_NAME == __FILE__
  puts "This program accepts an integer giving the total number of lockers,
  and should output an array filled with the locker numbers of those
  which are open at the end of his run.\n\n"
  puts locker_run(10).to_s
  puts locker_run(100).to_s
end
