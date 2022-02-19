def stockList(listOfArt, listOfCat)
  return "" if listOfArt.empty? or listOfCat.empty?
  listOfCat.each do |category|
    z = 0
    listOfArt.each do |code|
      z += code.split(" ")[-1].to_i if code.start_with? category
    end
    (category <<  " : #{z})").prepend("(")
  end
  listOfCat.join(" - ")
end

b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
c = ["W"]

puts stockList(b, c).inspect



# https://www.codewars.com/kata/help-the-bookseller
