def increment_string(input)
    /(\d)$/.match(input) ? 
        input.gsub(/(\d+)$/) { 
            |ch| String(ch.to_i + 1).rjust(ch.length, '0')
        } 
        : (input +'1')
end

if $PROGRAM_NAME == __FILE__
    puts "Return the number incremented by 1"
p increment_string("foo")
p increment_string("foobar001")
p increment_string("foobar99")
end