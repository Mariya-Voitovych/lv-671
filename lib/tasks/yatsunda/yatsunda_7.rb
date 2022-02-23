def get_middle(s)
    x = s.length
    y = (x/2).round
    x%2 > 0 ? s[y] : s[y-1] + s[y]
end

if $PROGRAM_NAME == __FILE__
    puts "This program find the middle character(s) of the word represented as a string."
p get_middle("testing")
p get_middle("middle")
end