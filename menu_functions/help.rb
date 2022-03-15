# frozen_string_literal: true

module MenuFunctions
  class Help
    class << self
      def call
        puts Shared::DIVIDER
        puts(HELP['all_commands'])
        puts Shared::DIVIDER
        find_command
      rescue StandardError
        puts 'Please check the commands name.'
      end

      private

      def find_command
        user_input = gets.chomp.downcase
        puts (HELP[user_input]).green unless user_input.empty?
      end
    end
  end
end
