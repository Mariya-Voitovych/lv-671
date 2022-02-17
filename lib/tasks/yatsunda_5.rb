puts "Return the number incremented by 1"
def increment_string(input)
    /(\d)$/.match(input) ? 
        input.gsub(/(\d+)$/) { 
            |ch| String(ch.to_i + 1).rjust(ch.length, '0')
        } 
        : (input +'1')
end

increment_string("foo")
increment_string("foobar001")
increment_string("foobar99")