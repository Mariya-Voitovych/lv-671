puts "This program calculates total amount of books for each category included in category list.
Category is the first letter of book code.\n\n"

def stockList(listOfArt, listOfCat)
  a = listOfCat.first
  return "" if listOfArt.empty? or listOfCat.empty?
  listOfCat.each do |category| 
      z = 0
      listOfArt.each do |code|
          z += code.split(" ")[-1].to_i if code.start_with? category
      end
      (category <<  " : #{z})").prepend("(")
  end
  res = listOfCat.join(" - ")
  categories = []
  listOfCat.each {|x| categories << x[1]}
  puts "For stocklist: #{listOfArt}\nand categories: #{categories},\nwe have such result: #{res}." 
  res
end


b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
c = ["A", "B"]

stockList(b, c)