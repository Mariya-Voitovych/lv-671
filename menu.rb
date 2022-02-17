require_relative 'menu_functions'

include MenuFunctions

COMMANDS = {
  help: Help,
  tasks: Tasks,
  tests: Tests,
  run: Run,
  test: Test,
  show: Show,
  authors: Authors
}.freeze

puts "This console menu-program allows you to run tasks, tests and get additional information.
There are 7 commands available: #{COMMANDS.keys.join(', ')}.
For more info run command: help.\n\n"

loop do
  print 'Enter your command: '
  input = gets.chomp.split(' ')

  if input.count < 1
    puts "You didn't enter any command!"
    next
  end

  if COMMANDS[input[0].to_sym]
    COMMANDS[input[0].to_sym].call(input)
  else
    puts "You entered invalid command. Enter 'help' to view available commands!"
  end
end
