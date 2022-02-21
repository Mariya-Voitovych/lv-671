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
    def self.call(input)
      
    end
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
      show_authors
    end
    @surnames = []
    def self.show_authors
      # @surnames = []
      puts "-----------------------------------------"
      Dir.foreach("#{Dir.pwd}/lib/tasks") do |i|
        if i.length > 2
          @surnames << i
        end  
      end
      @surnames.sort.each { |item|  puts item.capitalize }
      puts "-----------------------------------------"
      user_input
    end
    
    def self.user_input
      puts "Please, enter author name"
      user_input = gets.chomp.downcase
      if @surnames.include?(user_input)
        count_tasks(user_input)
      else
        puts "Authors name is incorrect.\nPlease, enter correct value from the list"
      end
    end
    def self.count_tasks(author)
      katas_foolder = Dir.glob("#{Dir.pwd}/lib/tasks/#{author}/*.rb")
      tests_foolder = Dir.glob("#{Dir.pwd}/spec/lib/tasks/#{author}/*.rb")
      if katas_foolder.empty? && tests_foolder.empty?
        puts "#{author} havent any tasks or spec_tests yet"
      else
        puts "#{author} have #{katas_foolder.length} katas and #{tests_foolder.length} spec_tests"
      end  

      # kata_value = Dir.glob("#{Dir.pwd}/lib/tasks/#{author}/*.rb").length
      # spec_value = Dir.glob("#{Dir.pwd}/spec/lib/tasks/#{author}/*.rb").length
      # puts Dir.glob("#{Dir.pwd}/spec/lib/tasks/#{author}/*.rb").empty?
    end
  end
  # class AllTests
  #   def self.call()
      
  #     
  #   end
  # end
end
