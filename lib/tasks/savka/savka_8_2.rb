# frozen_string_literal: true
puts "This program turns the first and last elements of the array.\n\n"

def fix_the_meerkat(arr)
  arr.reverse!
end

p fix_the_meerkat(["tail", "body", "head"])