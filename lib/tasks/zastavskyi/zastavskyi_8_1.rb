# frozen_string_literal: true

# Description:
# Remove all exclamation marks from the end of sentence.

# Examples
# remove("Hi!") === "Hi"
# remove("Hi!!!") === "Hi"
# remove("!Hi") === "!Hi"
# remove("!Hi!") === "!Hi"
# remove("Hi! Hi!") === "Hi! Hi"
# remove("Hi") === "Hi"

def remove_exclamation_marks(input_string)
  string = input_string.dup
  while string[-1] == '!' # while last char is '!'
    string.chomp!('!') # delete ! from the end in-place
  end
  string                   # return result string
end

if $PROGRAM_NAME == __FILE__
strings = ['hello!', 'world!!', '!for!', 'every!one!!']
strings.each { |string| puts "String: #{string}\nChanged string: #{remove_exclamation_marks(string)}" }
end