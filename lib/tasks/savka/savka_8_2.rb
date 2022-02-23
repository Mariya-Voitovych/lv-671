# frozen_string_literal: true

def fix_the_meerkat(arr)
  arr.reverse!
end

if $PROGRAM_NAME == __FILE__
  puts "This program turns the first and last elements of the array.\n\n"
p fix_the_meerkat(["tail", "body", "head"])
end