module MenuFunctions
  
  class Show
    require 'colorize'
    DIVIDER = "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬".green.freeze

    def self.call
      available_directories
      get_author_name
    end

    private

    def self.available_directories
      available_dirs = Dir.entries('./lib/tasks/').delete_if {|dir| [".", ".."].include?(dir)}
      available_dirs.each {|dir_name| puts dir_name.green}
    end

    def self.get_author_name
      puts "Choose author by entering corresponding last name"
      user_input = gets.chomp.downcase
      if AUTHORS.include?(user_input)
        getting_files(user_input) 
      else
        puts "Wrong input! Please try again"
        available_directories()
        get_author_name()
      end
    end

    def self.getting_files(user_input)
      total = Dir.entries("./lib/tasks/#{user_input}").delete_if {|dir| [".", ".."].include?(dir)}
      total.map!.with_index {|file, index| [(index + 1), file]}
      total.each {|i, x| puts "#{i})".green + " " + "#{x}"}
      getting_file_name(total, user_input)
    end

    def self.getting_file_name(total, user_input)
      puts "Choose file to open by entering corresponding number"
      num_input = gets.chomp.to_i
      if [*1..total.size].include?(num_input)
        opening_file(total, user_input, num_input)
      else
        puts "Wrong input! Please try again"
        getting_files(user_input)
      end
    end

    def self.opening_file(total, user_input, num_input)
      file = File.open("./lib/tasks/#{user_input}/#{total.assoc(num_input).at(1)}")
      show(file)
    end

    def self.show(file)
      puts DIVIDER
      file.readlines.each do |line|
        split = line.split("")
        if split.none? {|el| el == "\""}
          puts split.take_while {|char| char != "#"}.join
        elsif split.include?("#") && split[split.rindex("#") + 1] != "{"
          puts split.take_while.with_index {|x, i| i != split.rindex("#")}.join
        else
          puts line
        end
      end
      puts DIVIDER
    end
  end
end
