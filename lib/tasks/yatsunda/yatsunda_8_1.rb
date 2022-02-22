def find_difference(a, b)
    (a.reduce(:*) - b.reduce(:*)).abs
end

if $PROGRAM_NAME == __FILE__
    puts "This program find the difference of the cuboids volumes regardless of which is bigger"
p find_difference([3, 2, 5], [1, 4, 4])
end