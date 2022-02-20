puts "This program validate username. Username length must be between 4 and 16 symbols, lowercase letter, not numbers or underscores.\n\n"

def validate_usr(username)
  /^[a-z.?0-9?!_]{4,16}$/.match?(username)
end

validate_usr('asddsa')
