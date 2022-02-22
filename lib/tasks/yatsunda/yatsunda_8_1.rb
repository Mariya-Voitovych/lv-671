puts "This program find the difference of the cuboids volumes regardless of which is bigger"

def find_difference(a, b)
    (a.reduce(:*) - b.reduce(:*)).abs
end

p find_difference([3, 2, 5], [1, 4, 4])