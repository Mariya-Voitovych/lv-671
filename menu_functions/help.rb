module MenuFunctions
  class Help
    class << self
      def call
        begin
          puts Shared::DIVIDER
          puts (HELP['all_commands'])
          puts Shared::DIVIDER
          find_command
        rescue
          puts "Please check the commands name."
        end
      end

      private

      def find_command
        user_input = gets.chomp.downcase
        if !user_input.empty?
          puts (HELP[user_input]).green
        end
      end
    end
  end
end
