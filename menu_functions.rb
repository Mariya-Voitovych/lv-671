require_relative './show'
module MenuFunctions

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
    def self.call(input)

    end
  end

  class Tests
    def self.call(input)

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
