require_relative './show'
require_relative './user_tests'

$LOAD_PATH << '.'
require 'shared.rb'

module MenuFunctions

include Shared

  class Help
    class << self
      def call(input)
        begin
          show_instructions
          find_command
        rescue
          puts "Please check the commands name."
        end
      end

      private

      def show_instructions
        File.readlines("./help_instructions/all_commands.txt").each do |line|
          puts line
        end
      end

      def find_command
        user_input = gets.chomp.downcase
        if !user_input.empty?
          File.readlines("./help_instructions/#{user_input}.txt").each do |line|
            puts line
          end
        end
      end
    end
  end

  class Tasks
    def self.call
      tasks_list = Dir.glob("./lib/tasks/**/*.rb").drop(2)
      tasks_list.each do |task_name| task_name.gsub(/\w+\.\w+$/) {|task| puts task.green}
      end
    end
  end

  class Tests
    def self.call
      puts "-----------------------------------------"
      Dir.glob("#{Dir.pwd}/spec/lib/tasks/**/*.rb") do |i|
        puts i.split('/').last.split('.').first
      end
      puts "-----------------------------------------"
    end
  end

  class Run
    def self.call()
      showin_files_names(PATH_TASKS)
      text_format('choose_author')
      author = gets.chomp.downcase
      katas_list = Dir.entries("#{PATH_TASKS}/#{author}").drop(2).map.with_index{ |lastname, index| [(index + 1), lastname] }
      katas_list.each{ |index, lastname| puts "#{index}: #{lastname}" }
      num_input = get_input_number("run_author_task")
      system('ruby', "#{PATH_TASKS}/#{author}/#{katas_list.assoc(num_input).at(1)}")
      rescue Errno::ENOENT
        puts 'You entered invalid last name'.red
    end
    # def self.show_user_katas(input, url)
    #   katas_list = Dir.entries("#{url}/#{input}").drop(2)
    #   katas_list.map!.with_index{ |lastname, index| [(index + 1), lastname] }
    #   katas_list.each{ |index, lastname| puts "#{index}: #{lastname}" }
    # end
  end

  class Test
    def self.call(input)

    end
  end

  # class Show
  #   def self.call(input)

  #   end
  # end

  class Authors
    def self.call(input)
      surnames = []
      puts "-----------------------------------------"
      Dir.foreach("#{Dir.pwd}/lib/tasks") do |i|
        if i.length > 2
          surnames << i.capitalize
        end  
      end
      surnames.sort.each { |item|  puts item }
      puts "-----------------------------------------"
    end
  end
end
