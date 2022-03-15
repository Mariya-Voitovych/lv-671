# frozen_string_literal: true

def string_to_number(str)
  str.to_i
end

if $PROGRAM_NAME == __FILE__
  puts "This progrsm convert string to number\n\n"
  puts string_to_number('1234')
  puts string_to_number('-20')
end
