puts"A ﬂoating-point number can be represented as mantissa * radix ^ exponent.
This program returns argument in the form of a string concatenation of mantissa, P and exponent."

def mant_exp(a_number, digits_number)
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

puts "(0.06, 10) => #{mant_exp(0.06, 10)}"
puts "(123456.0, 4) => #{mant_exp(123456.0, 4)}"
