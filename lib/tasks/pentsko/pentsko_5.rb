puts "This method take number, find the one smallest number in it and take it out of initial number.
This smallest number add to the beginning of initial number in such way,
 that number what appear in result number become the smallest of potentially possible.
In result add new pottentialy smallest number, old index of smallest number in initial number
 and index of place where add smallest initial number\n\n"

def smallest(n)
  elements = n.to_s.split(//)                                   #розділяє ціле число на окремі елементи
  array_bigger = elements.to_a                                  #перетворює елемент у масив значень
  array_smaller = elements.to_a.dup.tap { |i| i.delete_at(0) }  # перетворює список чисел у масив і видаляє перший елемент
  minimal_num = array_smaller.min.to_i                          # знаходить мінімальне число у новому меншому масиві
  bigger_old_index = -(array_bigger.reverse.index(minimal_num.to_s)+1)
  old_index = array_bigger.length + bigger_old_index      # знаходить індекс мінімального числа

  array_bigger_new = array_bigger.dup.tap { |i| i.delete_at(old_index) }   #видаляє першу цифру(2)

  array_bigger_new.map do |el|                                         #проходить по масиву доки не знайде новий індекс, порівнюючи числа по порядку
    numb = el.to_i
    next unless minimal_num <= numb
    new_index = array_bigger_new.index(numb.to_s)
    @new_index = new_index
    break
  end

    add_indexes = array_bigger_new.insert(@new_index, minimal_num).join
    result = [add_indexes, old_index, @new_index]
    result.map { |el| el.to_i }
end

smallest(261235)
