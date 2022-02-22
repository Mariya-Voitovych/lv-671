def mantExp(a_number, digits_number)
  i = 0
  a_number = a_number.to_f
  while a_number.to_i.to_s.length < digits_number
    a_number *= 10
    i -= 1
  end

  while a_number.to_i.to_s.length > digits_number
    a_number /= 10
    i += 1
  end
  "#{a_number.to_i}P#{i}"
end

if $PROGRAM_NAME == __FILE__
  puts"A ﬂoating-point number can be represented as mantissa * radix ^ exponent.
This program returns argument in the form of a string concatenation of mantissa, P and exponent."
puts "(0.06, 10) => #{mantExp(0.06, 10)}"
puts "(123456.0, 4) => #{mantExp(123456.0, 4)}"
end