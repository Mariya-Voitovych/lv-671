puts "Return it as a string in Expanded Form. For example: 12 return '10 + 2'"

def expanded_form(num)
    a=[]
    while num > 0 do
      a.push(num%10)
      num=num/10
    end
   a.map.with_index { |x, i| x * 10**i }.reverse().find_all{ |k| k!=0 }.join(' + ')
end

p expanded_form(42)
p expanded_form(70304)