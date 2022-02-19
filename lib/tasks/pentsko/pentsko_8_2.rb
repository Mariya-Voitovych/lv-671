def validate_usr(username)
  /^[a-z.?0-9?!_]{4,16}$/.match?(username) 
  
end

validate_usr('asddsa')

#https://www.codewars.com/kata/simple-validation-of-a-username-with-regex