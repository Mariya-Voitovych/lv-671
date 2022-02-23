def balance(input_data)
  drop_symbols = "Original_Balance: "+ input_data.gsub(/(:|=|!|^\s)/, "")
  spendings = drop_symbols.split.map { |el| /\d+\.\d+/.match(el) }
  spendings = spendings.compact.map! { |el| el.to_s.to_f }
  s=spendings.slice!(0)
  total_expense = spendings.sum
  average_expense = (total_expense/spendings.size).round(2)
  balances = []
  spendings.each_with_index {|el, i| balances << (s - spendings[0..i].sum) }
  add_end_line = drop_symbols.gsub(/\s\d{1,3}\.\d{1,2}/) {|el| el + " Balance "}.split("\n")

  costs = []
  add_end_line.each_with_index do |element, index|
    if index > 0
      current_balance = '%.2f' % balances[index-1]
      costs << element + current_balance.to_s
    end
  end
  c = costs.join(',')
           .gsub(/1000\.001000\.0/, "1000.00").gsub(/,/, "")
           .gsub(/\d{3}\s/) { |el| "\r\n" + el}.gsub(/\d+\.\d+/){ |el| '%.2f' % el} + "\r\nTotal_expense__#{'%.2f' % total_expense}\r\nAverage_expense__#{'%.2f' % average_expense}"
                                                                                        .gsub(/_/, " ")
  "Original Balance: #{'%.2f' % s}"+c.delete("?").delete(";").delete("}").delete("{")
end

if $PROGRAM_NAME == __FILE__
  puts "This function change initial string by substracting from basic ballance spending.
After every spending it add remnant data to end of string.\n\n"
  puts balance("1000.00!=

125 Market !=:125.45
126 Hardware =34.95
127 Video! 7.45
128 Book :14.32
129 Gasoline ::16.10
")
  end