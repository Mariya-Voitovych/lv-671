require "bigdecimal"
require "prime"

puts "This program checks if the passed number is Wilson prime.
Wilson prime means that the number should be prime and result of expression ((n-1)! + 1) / (n * n)) should be whole number.\n\n"

def am_I_Wilson(p)
    if p.prime?
        x = BigDecimal(factorial(p - 1) + 1)/(p.to_f * p)
        res = is_whole(x) ? true : false
    else
        res = false
    end
    puts "Passed number #{p} is" << (res ? " " : " not ") << "Wilson prime."
    res
end

def is_whole(x)
    (x - x.floor) == 0 ? true : false
end

def factorial(n)
    return 1 if (n <= 1)
    return n * factorial(n - 1)
end

am_I_Wilson(5)
am_I_Wilson(8)
am_I_Wilson(19)