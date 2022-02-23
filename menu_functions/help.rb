module MenuFunctions
  class Help
    class << self
      def call
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
            puts line.green
          end
        end
      end
    end
  end
end
