def stockList(list_of_art, list_of_cat)
  return '' if list_of_art.empty? || list_of_cat.empty?

  list_of_cat.each do |category| 
    z = 0
    list_of_art.each do |code|
      z += code.split(' ')[-1].to_i if code.start_with? category
    end
    (category << " : #{z})").prepend('(')
  end
  res = list_of_cat.join(' - ')
  categories = []
  list_of_cat.each { |x| categories << x[1] }
  puts "For stocklist: #{list_of_art}\nand categories: #{categories},\nwe have such result: #{res}."
  res
end

if $PROGRAM_NAME == __FILE__
  puts "This program calculates total amount of books for each category included in category list.
Category is the first letter of book code.\n\n"

b = ['ABAR 200', 'CDXE 500', 'BKWR 250', 'BTSQ 890', 'DRTY 600']
c = %w[A B]

stockList(b, c)
end