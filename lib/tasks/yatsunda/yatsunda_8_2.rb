# You can print your name on a billboard ad. Find out how much it will cost you. 
# Each letter has a default price of £30, but that can be different if you are given 2 parameters instead of 1.
# You can not use multiplier "*" operator.
# If your name would be Jeong-Ho Aristotelis, ad would cost £600. 20 leters * 30 = 600 (Space counts as a letter).

def billboard(name, price=30)
    s = 0
    p = price
      while p > 0 do 
        s += name.length
        p = p - 1
      end  
    s
end

if $PROGRAM_NAME == __FILE__
  puts "This program find how much will cost your string "
p billboard('Roxa',6)
end