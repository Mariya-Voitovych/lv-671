module MenuFunctions
  require_relative '../shared'
  include Shared

  class Run
    def self.call()
      showin_files_names(PATH_TASKS)
      text_format('choose_author')
      author = gets.chomp.downcase
      katas_list = Dir.entries("#{PATH_TASKS}/#{author}").sort.drop(2).map.with_index{ |lastname, index| [(index + 1), lastname] }
      katas_list.each{ |index, lastname| puts "#{index}: #{lastname}" }
      num_input = get_input_number("run_author_task")
      system('ruby', "#{PATH_TASKS}/#{author}/#{katas_list.assoc(num_input).at(1)}")
      rescue Errno::ENOENT
        puts 'You entered invalid last name'.red
    end
  end
end