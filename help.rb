def helpp(command_name = 'all_commands')
  
  f = File.open("./help_instructions/#{command_name}.txt")
  while line = f.gets do
    puts line
  end
  f.close

end  